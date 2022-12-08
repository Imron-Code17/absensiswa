import 'package:get/get.dart';

class AddAbsensiController extends GetxController {
  String _absen = "Hadir";
  String get absen => _absen;

  void pilihAbsen(String type) {
    _absen = type;

    update();
  }
}
