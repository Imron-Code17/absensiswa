import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../../../data/db/absen_db.dart';

AppBar kelasApp() {
  Kela kelas = Get.arguments;
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 1,
    title: Text(
      '${kelas.kelas}',
      style: GoogleFonts.lato(
          fontSize: 18, fontWeight: FontWeight.w600, color: blackColor),
    ),
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Iconsax.arrow_left,
        color: blackColor,
      ),
    ),
    centerTitle: false,
    actions: [
      Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.search,
                color: Colors.grey.shade600,
              )),
          PopupMenuButton(
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.grey.shade600,
              ),
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        child: Text(
                      'Export Data Siswa',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
                  ]),
        ],
      )
    ],
    bottom: TabBar(
      tabs: [Text('Siswa'), Text('Absensi')],
      labelPadding: EdgeInsets.only(bottom: 10),
      indicatorColor: primaryColor,
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: primaryColor,
      unselectedLabelColor: blackColor,
      labelStyle: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}
