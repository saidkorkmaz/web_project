import 'package:web_task/common/constants/styles/constants.dart';
import 'package:web_task/data/models/task.dart';
import 'package:web_task/data/services/abstract/i_task_service.dart';

class TaskMockService extends ITaskService {
  @override
  Future<List<Task>> getTasks() async {
    await Future.delayed(const Duration(seconds: MyConstants.apiMockDelay));
    final now = DateTime.now();
    return <Task>[
      Task(id: '1', title: 'Read emails from mailbox', dateTime: now, description: "Description 1"),
      Task(id: '2', title: 'Check latest news on Flutter', dateTime: now, description: "Description 2"),
      Task(id: '3', title: 'Have a call with Flutter team', dateTime: now, description: "Description 3"),
      Task(id: '4', title: 'Work on application performance', dateTime: now, description: "Description 4"),
      Task(id: '5', title: 'Plan work for next week', dateTime: now, description: "Description 5"),
      Task(id: '6', title: 'Order lunch', dateTime: now, description: "Description 6"),
      Task(id: '7', title: 'Create an invoice for last month', dateTime: now, description: "Description 7"),
    ];
  }
}
