import 'package:get/get.dart';

import '../controllers/add_absensi_controller.dart';

class AddAbsensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAbsensiController>(
      () => AddAbsensiController(),
    );
  }
}
