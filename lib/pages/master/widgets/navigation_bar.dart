import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/pages/detail/titles_part/controller/titles_controller.dart';
import 'package:web_task/pages/master/widgets/selectable_item.dart';

import '../../../common/controllers/controllers.dart';
import '../controller/master_controller.dart';
import 'divider.dart';

class MyNavigationBar extends ConsumerWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MasterController masterController = ref.watch(Controllers.masterController);
    TitlesController titleController = ref.watch(Controllers.titlesController);
    final selectedPage = ref.watch(masterController.selectedPageProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: masterController.selectableItems
          .map((item) => Column(
                children: [
                  const MyDivider(),
                  InkWell(
                    onTap: () {
                      masterController.setSelectedPage(masterController.selectableItems.indexOf(item), ref);
                      if (selectedPage != 1) {
                        ref.read(titleController.getSelectedTileProvider().notifier).state = "-1";
                      }
                    },
                    child: SelectableItem(
                      label: item.label,
                      isSelected: masterController.selectableItems.indexOf(item) == selectedPage,
                    ),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
