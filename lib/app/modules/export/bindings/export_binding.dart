import 'package:get/get.dart';

import '../controllers/export_controller.dart';

class ExportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExportController>(
      () => ExportController(),
    );
  }
}
