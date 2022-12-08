import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar addKelasApp(BuildContext context) {
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 1,
    title: Text(
      'Tambahkan Kelas',
      style: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
    ),
    automaticallyImplyLeading: false,
  );
}
