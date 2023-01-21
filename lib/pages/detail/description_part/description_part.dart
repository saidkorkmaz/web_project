import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:web_task/common/extensions/context_extension.dart';
import 'package:web_task/common/widgets/headers/title_header.dart';
import 'package:web_task/pages/master/controller/master_controller.dart';

import '../../../common/constants/styles/format.dart';
import '../../../common/constants/styles/padding.dart';
import '../../../common/controllers/controllers.dart';
import '../../../data/models/task.dart';
import '../titles_part/controller/titles_controller.dart';

class DescriptionPart extends ConsumerWidget {
  const DescriptionPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TitlesController titlesController = ref.watch(Controllers.titlesController);
    final String selectedTaskId = ref.watch(titlesController.getSelectedTileProvider());
    Task selectedTask = titlesController.tasks.singleWhere((element) => element.id == selectedTaskId,
        orElse: () => Task(id: "0", title: "No title found", dateTime: DateTime.now(), description: ""));
    return Padding(
      padding: const EdgeInsets.all(MyPadding.large),
      child: Container(
        child: selectedTaskId == "0" || selectedTaskId == "-1"
            ? const Text("Please select a task")
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyHeader(label: selectedTask.title ?? "No title found"),
                  Text(
                    DateFormat(MyFormats.dateTime).format(selectedTask.dateTime ?? DateTime.now()),
                    textAlign: TextAlign.start,
                    style: context.xSubtitle1.copyWith(color: context.xDividerColor),
                  ),
                  Text(
                    selectedTask.description.toString(),
                    textAlign: TextAlign.start,
                    style: context.xBodyText1.copyWith(color: context.xDark),
                  ),
                ],
              ),
      ),
    );
  }
}
