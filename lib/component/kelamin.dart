import 'package:absensiswa/app/modules/add_siswa/controllers/add_siswa_controller.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Kelamin extends StatelessWidget {
  const Kelamin({super.key, required this.value, required this.title});

  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddSiswaController>(builder: (context) {
      return InkWell(
        onTap: () => context.pilihKelamin(value),
        child: Row(
          children: [
            Radio(
              value: value,
              groupValue: context.kelamin,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (String? value) => context.pilihKelamin(value!),
              activeColor: primaryColor,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: GoogleFonts.lato(fontSize: 14),
            ),
          ],
        ),
      );
    });
  }
}
