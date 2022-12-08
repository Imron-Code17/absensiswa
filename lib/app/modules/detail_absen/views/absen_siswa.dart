import 'package:absensiswa/app/modules/detail_absen/views/kelas_appbar.dart';
import 'package:absensiswa/app/routes/app_pages.dart';
import 'package:absensiswa/component/size.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

Widget absenSiswa(BuildContext context) {
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      backgroundColor: primaryColor,
      onPressed: () => Get.toNamed(Routes.ADD_ABSENSI),
      child: Icon(
        IconlyLight.plus,
        color: whiteColor,
      ),
    ),
    body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Container(
              color: whiteColor,
              child: ListTile(
                title: Text(
                  "Rabu 07 Desember",
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: blackColor),
                ),
                subtitle: Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: primaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1 Hadir",
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
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
                            backgroundColor: Colors.redAccent,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1 Alfa",
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
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
                            "1 Izin",
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
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
                            backgroundColor: accentColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1 Sakit",
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
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
                    itemBuilder: (context) => [
                          PopupMenuItem(
                              value: 1,
                              child: Text(
                                'Ubah Kelas',
                                style: GoogleFonts.lato(fontSize: 14),
                              )),
                          PopupMenuItem(
                              value: 2,
                              child: Text(
                                'Hapus Kelas',
                                style: GoogleFonts.lato(fontSize: 14),
                              )),
                        ],
                    onSelected: ((int menu) {})),
              ),
            ),
          );
        }),
  );
}

Widget headerKelas(BuildContext context) {
  double heightBody = height - kelasApp().preferredSize.height - paddingTop;
  return Container(
    padding: EdgeInsets.all(15),
    height: heightBody * 0.5,
    width: width,
    color: seconColor.withOpacity(0.1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Statistik Kehadiran",
          style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Text(
          "Rabu 07 Desember 2022",
          style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: heightBody * 0.35,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 95,
                  mainAxisSpacing: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(15),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12)),
                );
              }),
        )
      ],
    ),
  );
}
