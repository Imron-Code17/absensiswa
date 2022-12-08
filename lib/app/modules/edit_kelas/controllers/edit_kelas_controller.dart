import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class EditKelasController extends GetxController {
  TextEditingController kelasC = TextEditingController();
  TextEditingController desC = TextEditingController();

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
