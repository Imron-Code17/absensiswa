import 'package:absensiswa/app/modules/home/controllers/home_controller.dart';
import 'package:absensiswa/component/kelamin.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/add_siswa_controller.dart';

class AddSiswaView extends GetView<AddSiswaController> {
  const AddSiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.find();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Iconsax.arrow_left,
              color: blackColor,
            ),
          ),
          elevation: 1,
          title: Text(
            'Tambahkan Siswa',
            style: GoogleFonts.lato(
                fontSize: 18, fontWeight: FontWeight.w600, color: blackColor),
          ),
          centerTitle: false,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            controller.inputSiswa();
          },
          child: Icon(Ionicons.checkbox_outline),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                controller: controller.namaC,
                cursorColor: primaryColor,
                decoration: InputDecoration(
                    labelText: 'Nama Siswa',
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
              height: 65,
              child: TextField(
                controller: controller.nisC,
                cursorColor: primaryColor,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'NIS',
                  labelStyle: GoogleFonts.lato(fontSize: 14),
                  floatingLabelStyle: GoogleFonts.lato(color: primaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 1.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jenis Kelamin",
                      style:
                          GoogleFonts.lato(fontSize: 14, color: primaryColor)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Kelamin(value: "Laki - Laki", title: "Laki - Laki"),
                      SizedBox(width: 10),
                      Kelamin(value: "Perempuan", title: "Perempuan")
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
