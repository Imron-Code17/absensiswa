import 'package:absensiswa/app/routes/app_pages.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

FloatingActionButton homeFloat() {
  return FloatingActionButton(
    backgroundColor: primaryColor,
    onPressed: () => Get.toNamed(Routes.ADD_KELAS),
    child: Icon(IconlyLight.plus),
  );
}
