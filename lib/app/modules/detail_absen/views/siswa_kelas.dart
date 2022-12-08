import 'package:absensiswa/app/data/db/absen_db.dart';
import 'package:absensiswa/app/modules/detail_absen/views/kelas_appbar.dart';
import 'package:absensiswa/app/modules/home/controllers/home_controller.dart';
import 'package:absensiswa/app/routes/app_pages.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../../../component/size.dart';

Widget siswaKelas(BuildContext context) {
  double heightBody = height - kelasApp().preferredSize.height;
  final HomeController homeC = Get.find();
  Kela kelas = Get.arguments;

  return Scaffold(
      appBar: appBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () => Get.toNamed(Routes.ADD_SISWA),
        child: Icon(
          IconlyLight.plus,
          color: whiteColor,
        ),
      ),
      body: StreamBuilder<List<SiswatabData>>(
          stream: homeC.kelasM.fetchAllSiswa(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snap.data?.length == 0 || snap.data == null) {
              return Center(
                child: Text('Belum ada siswa'),
              );
            }
            return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (context, index) {
                SiswatabData siswa = snap.data![index];
                final text = "${siswa.kelamin}";

                return Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: GestureDetector(
                    onTap: () =>
                        Get.toNamed(Routes.DETAIL_SISWA, arguments: siswa),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: double.infinity,
                      color: whiteColor,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Text(
                                  '${siswa.nis}',
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                          Expanded(
                              flex: 6,
                              child: Text(
                                '${siswa.nama}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.lato(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )),
                          SizedBox(width: 5),
                          Expanded(
                              flex: 1,
                              child: Text(
                                text.length > 1
                                    ? '${text.substring(0, 1)}'
                                    : text,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }));
}

AppBar appBar() {
  return AppBar(
    toolbarHeight: 40,
    backgroundColor: Colors.grey.shade100,
    elevation: 0,
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      height: 40,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                'NIS',
                style:
                    GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500),
              )),
          Expanded(
              flex: 6,
              child: Text(
                'Nama',
                style:
                    GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500),
              )),
          SizedBox(width: 5),
          Expanded(
              flex: 1,
              child: Text(
                'L/P',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500),
              )),
        ],
      ),
    ),
  );
}
