import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

AppBar absenApp(BuildContext context) {
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 1,
    title: Text(
      'Abseni',
      style: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
    ),
    centerTitle: false,
    actions: [
      Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.document,
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
                      'Beri Rating',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
                    PopupMenuItem(
                        child: Text(
                      'Bagikan Absen',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
                    PopupMenuItem(
                        child: Text(
                      'Beri Masukan',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
                  ]),
        ],
      )
    ],
  );
}
