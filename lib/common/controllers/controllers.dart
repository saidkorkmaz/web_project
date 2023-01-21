import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pages/detail/titles_part/controller/titles_controller.dart';
import '../../pages/master/controller/master_controller.dart';

class Controllers {
  static late Provider<MasterController> masterController;
  static late Provider<TitlesController> titlesController;

  static void initialize() {
    masterController = Provider<MasterController>((ref) {
      return MasterController();
    });
    titlesController = Provider<TitlesController>((ref) {
      return TitlesController();
    });
  }
}
