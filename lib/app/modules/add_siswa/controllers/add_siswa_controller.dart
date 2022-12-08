import 'package:absensiswa/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/db/absen_db.dart';

class AddSiswaController extends GetxController {
  TextEditingController idKlasC = TextEditingController();
  TextEditingController namaC = TextEditingController();
  TextEditingController nisC = TextEditingController();
  TextEditingController kelaminC = TextEditingController();

  String _kelamin = "Laki - Laki";
  String get kelamin => _kelamin;

  void pilihKelamin(String type) {
    _kelamin = type;

    update();
  }

  final HomeController homeC = Get.find();

  void inputSiswa() {
    if (namaC.text.isEmpty && nisC.text.isEmpty && kelaminC.text.isEmpty) {
      Get.snackbar("Gagal", "Isi Semua Data");
    } else {
      homeC.kelasM.insertSiswa(SiswatabData(
          nama: namaC.text, nis: int.parse(nisC.text), kelamin: kelamin));
      Get.back();
    }
  }
}
