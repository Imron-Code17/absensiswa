import 'package:get/get.dart';

import '../controllers/edit_absen_controller.dart';

class EditAbsenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAbsenController>(
      () => EditAbsenController(),
    );
  }
}
