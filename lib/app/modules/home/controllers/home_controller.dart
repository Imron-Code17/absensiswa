import '../../../data/db/absen_db.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  AbsenManager kelasM = AbsenManager();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
