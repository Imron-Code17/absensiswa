import 'package:absensiswa/component/size.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/edit_absen_controller.dart';

class EditAbsenView extends GetView<EditAbsenController> {
  const EditAbsenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double heightBody =
        height - appBarAbsenEdit().preferredSize.height - paddingTop;
    return Scaffold(
        appBar: appBarAbsenEdit(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {},
          child: Icon(Ionicons.checkbox_outline),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          height: heightBody * 0.6,
          width: width,
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  child: Row(
                children: [
                  Icon(
                    IconlyLight.calendar,
                    color: blackColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Senin 5 Desember',
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  ),
                ],
              )),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  color: seconColor.withOpacity(0.1),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade400.withOpacity(0.2),
                      child: Icon(
                        IconlyBold.profile,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    title: Text(
                      'Moch Ali Imron',
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    subtitle: Text(
                      '82798271918',
                      style: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  )),
              SizedBox(height: 10),
              Text(
                'Status Kehadiran',
                style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500),
              ),
              SizedBox(height: 10),
              // Row(
              //   children: [
              //     Absen(
              //       value: 'Hadir',
              //       title: "Hadir",
              //     ),
              //     Absen(
              //       value: 'Hadir',
              //       title: "Hadir",
              //     ),
              //     Absen(
              //       value: 'Hadir',
              //       title: "Hadir",
              //     ),
              //     Absen(
              //       value: 'Hadir',
              //       title: "Hadir",
              //     )
              //   ],
              // )

              SizedBox(
                  height: 100,
                  child: TextField(
                      decoration:
                          InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            border: OutlineInputBorder())))
            ],
          ),
        ));
  }
}

AppBar appBarAbsenEdit() {
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 1,
    leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          IconlyLight.arrow_left,
          color: blackColor,
        )),
    title: Text(
      'Edit Absen',
      style: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
    ),
    centerTitle: false,
  );
}
