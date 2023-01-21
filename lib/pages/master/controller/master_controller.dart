import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_task/pages/master/models/selectable_item_model.dart';

class MasterController {
  MasterController();

  List<SelectableItemModel> selectableItems = const [
    SelectableItemModel(label: "Tasks", isSelected: false),
    SelectableItemModel(label: "Projects", isSelected: false),
    SelectableItemModel(label: "Teams", isSelected: false),
  ];
  var selectedPageProvider = StateProvider<int>((ref) => 0);

  void setSelectedPage(int index, WidgetRef ref) {
    ref.read(selectedPageProvider.notifier).state = index;
  }
}
