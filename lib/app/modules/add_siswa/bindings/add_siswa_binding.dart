import 'package:get/get.dart';

import '../controllers/add_siswa_controller.dart';

class AddSiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddSiswaController>(
      () => AddSiswaController(),
    );
  }
}
