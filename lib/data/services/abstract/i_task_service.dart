import '../../models/task.dart';

abstract class ITaskService{
  Future<List<Task>> getTasks();
}