import 'package:get/get.dart';

import '../controllers/add_kelas_controller.dart';

class AddKelasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddKelasController>(
      () => AddKelasController(),
    );
  }
}
