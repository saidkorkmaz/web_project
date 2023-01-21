import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/data/data.dart';

import '../../../../data/models/task.dart';

class TitlesController {
  final _tasksProvider = FutureProvider<List<Task>>(((ref) => Data.instance.taskRepository.getTasks()));
  final _selectedTileProvider = StateProvider<String>((ref) => "0");

  List<Task> tasks = [];
  String selectedTileId = "0";

  void setTasks(List<Task> tasks) {
    this.tasks.clear();
    this.tasks.addAll(tasks);
  }

  FutureProvider<List<Task>> getTasksProvider() {
    return _tasksProvider;
  }

  StateProvider<String> getSelectedTileProvider() {
    return _selectedTileProvider;
  }

  void onTileTapped(String id, WidgetRef ref) {
    print("onTileTapped: $id");
    selectedTileId = id;
    ref.read(_selectedTileProvider.notifier).state = id;
  }
}
