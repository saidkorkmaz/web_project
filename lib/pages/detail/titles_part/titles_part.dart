import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/common/constants/styles/padding.dart';
import 'package:web_task/common/controllers/controllers.dart';
import 'package:web_task/common/extensions/context_extension.dart';
import 'package:web_task/common/widgets/dividers/horizontal_divider.dart';
import 'package:web_task/common/widgets/headers/title_header.dart';
import 'package:web_task/common/widgets/indicators/loading_indicator.dart';
import 'package:web_task/pages/detail/titles_part/controller/titles_controller.dart';
import 'package:web_task/pages/detail/titles_part/widgets/tile.dart';
import 'package:web_task/pages/master/controller/master_controller.dart';

import '../../../data/models/task.dart';

class TitlesPart extends ConsumerWidget {
  const TitlesPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MasterController masterController = ref.watch(Controllers.masterController);
    TitlesController titlesController = ref.watch(Controllers.titlesController);
    AsyncValue<List<Task>> tasks = ref.watch(titlesController.getTasksProvider());
    var selectedTaskId = ref.watch(titlesController.getSelectedTileProvider());
    final selectedPageIndex = ref.watch(ref.read(Controllers.masterController).selectedPageProvider);

    return Padding(
      padding: const EdgeInsets.all(MyPadding.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyHeader(label: masterController.selectableItems[selectedPageIndex].label),
          selectedPageIndex != 0
              ? const SizedBox.shrink()
              : tasks.when(
                  data: (data) {
                    titlesController.setTasks(data);
                    return Column(
                      children: data
                          .map(
                            (task) => Tile(
                              id: task.id ?? "0",
                              label: task.title ?? "-",
                              date: task.dateTime ?? DateTime.now(),
                              isSelected: titlesController.selectedTileId == task.id,
                              onTap: (id) {
                                titlesController.onTileTapped(id, ref);
                              },
                            ),
                          )
                          .toList(),
                    );
                  },
                  loading: () => const LoadingIndicator(),
                  error: (error, stack) => Text(error.toString())),
        ],
      ),
    );
  }
}
