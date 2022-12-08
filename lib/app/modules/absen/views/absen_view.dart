import 'package:absensiswa/app/modules/absen/views/absen_appbar.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/absen_controller.dart';

class AbsenView extends GetView<AbsenController> {
  const AbsenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: absenApp(context),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: whiteColor,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                  ),
                  title: Text(
                    "Kelas ${index + 1}",
                    style: GoogleFonts.lato(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: accentColor,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "2 Hadir",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: seconColor,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "2 Alfa",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  trailing: PopupMenuButton(
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.grey.shade600,
                      ),
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                                child: Text(
                              'Bagikan Absensi',
                              style: GoogleFonts.lato(fontSize: 14),
                            )),
                            PopupMenuItem(
                                child: Text(
                              'Export Absensi',
                              style: GoogleFonts.lato(fontSize: 14),
                            )),
                            PopupMenuItem(
                                child: Text(
                              'Hapus Absensi',
                              style: GoogleFonts.lato(fontSize: 14),
                            )),
                          ]),
                ),
              );
            }));
  }
}
