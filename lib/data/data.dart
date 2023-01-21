import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/data/repositories/abstract/i_task_repository.dart';
import 'package:web_task/data/repositories/task_repository.dart';
import 'package:web_task/data/services/abstract/i_task_service.dart';
import 'package:web_task/data/services/task_mock_service.dart';

class Data {
  Data._();
  static final Data instance = Data._();


  late final ITaskService taskService;
  late final ITaskRepository taskRepository;

  void initialize() {
    initializeServicePrividers();
    initializeRepositories();
  }

  void initializeServicePrividers() {
    taskService = TaskMockService();
  }

  void initializeRepositories() {
    taskRepository = TaskRepository(taskService);
  }
}
