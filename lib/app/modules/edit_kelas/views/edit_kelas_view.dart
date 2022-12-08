import 'package:absensiswa/app/data/db/absen_db.dart';
import 'package:absensiswa/app/modules/add_kelas/views/add_appbar.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/edit_kelas_controller.dart';

class EditKelasView extends GetView<EditKelasController> {
  const EditKelasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Kela kelas = Get.arguments;
    final HomeController homeC = Get.find();
    controller.kelasC.text = kelas.kelas;
    controller.desC.text = kelas.desc;
    return Scaffold(
        appBar: addKelasApp(context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            homeC.kelasM.updateKelas(Kela(
                id: kelas.id,
                kelas: controller.kelasC.text,
                desc: controller.desC.text));
            Get.back();
          },
          child: Icon(Ionicons.checkbox_outline),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                controller: controller.kelasC,
                cursorColor: primaryColor,
                decoration: InputDecoration(
                    labelText: 'Nama kelas',
                    labelStyle: GoogleFonts.lato(fontSize: 14),
                    floatingLabelStyle: GoogleFonts.lato(color: primaryColor),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                controller: controller.desC,
                cursorColor: primaryColor,
                decoration: InputDecoration(
                    labelText: 'Deskripsi',
                    labelStyle: GoogleFonts.lato(fontSize: 14),
                    floatingLabelStyle: GoogleFonts.lato(color: primaryColor),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            )
          ],
        ));
  }
}
