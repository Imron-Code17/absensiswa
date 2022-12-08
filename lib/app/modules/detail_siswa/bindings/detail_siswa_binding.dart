import 'package:get/get.dart';

import '../controllers/detail_siswa_controller.dart';

class DetailSiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailSiswaController>(
      () => DetailSiswaController(),
    );
  }
}
