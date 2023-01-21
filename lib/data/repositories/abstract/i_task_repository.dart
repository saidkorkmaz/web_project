import '../../models/task.dart';

abstract class ITaskRepository{
  Future<List<Task>> getTasks();
}