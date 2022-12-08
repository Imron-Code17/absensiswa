import 'package:get/get.dart';

import '../controllers/edit_kelas_controller.dart';

class EditKelasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditKelasController>(
      () => EditKelasController(),
    );
  }
}
