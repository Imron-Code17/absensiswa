import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

AppBar profileAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 1,
    title: Text(
      'Profile',
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
                Iconsax.sun_1,
                color: Colors.grey.shade600,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.grey.shade600,
              )),
        ],
      )
    ],
  );
}
