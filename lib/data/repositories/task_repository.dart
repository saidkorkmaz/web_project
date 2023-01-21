import '../models/task.dart';
import '../services/abstract/i_task_service.dart';
import 'abstract/i_task_repository.dart';

class TaskRepository extends ITaskRepository {
  final ITaskService _taskService;

  TaskRepository(this._taskService);

  @override
  Future<List<Task>> getTasks() async {
    return await _taskService.getTasks();
  }
}