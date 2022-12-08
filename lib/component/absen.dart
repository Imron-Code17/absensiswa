import 'package:absensiswa/app/modules/add_absensi/controllers/add_absensi_controller.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Absen extends StatelessWidget {
  const Absen({super.key, required this.value, required this.title});

  final String value;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAbsensiController>(builder: (context) {
      return InkWell(
        onTap: () => context.pilihAbsen(value),
        child: Row(
          children: [
            Radio(
              value: value,
              groupValue: context.absen,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (String? value) => context.pilihAbsen(value!),
              activeColor: primaryColor,
            ),
            SizedBox(width: 10),
            Text(
              title.toString(),
              style: GoogleFonts.lato(fontSize: 14),
            ),
          ],
        ),
      );
    });
  }
}
