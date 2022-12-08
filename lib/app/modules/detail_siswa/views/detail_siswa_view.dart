import 'package:absensiswa/app/modules/home/controllers/home_controller.dart';
import 'package:absensiswa/component/size.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/db/absen_db.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_siswa_controller.dart';

class DetailSiswaView extends GetView<DetailSiswaController> {
  const DetailSiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SiswatabData siswa = Get.arguments;
    double heightBody =
        height - appbarSiswa().preferredSize.height - paddingTop;
    return Scaffold(
        appBar: appbarSiswa(),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
              height: heightBody * 0.38,
              width: width,
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${siswa.nama}",
                    style: GoogleFonts.lato(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${siswa.nis}",
                    style: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${siswa.kelamin}",
                    style: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Divider(
                            color: Colors.grey.shade300,
                            height: 1,
                            thickness: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Kelas",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade300),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: SizedBox(
                          child: Divider(
                            color: Colors.grey.shade300,
                            height: 1,
                            thickness: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Ionicons.storefront),
                      Text(
                        "${siswa.id}",
                        style: GoogleFonts.lato(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: whiteColor,
                          child: ListTile(
                            onTap: () => Get.toNamed(Routes.EDIT_ABSEN),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(
                                Iconsax.chart_success5,
                                color: Colors.grey,
                              ),
                            ),
                            title: Text(
                              'Senin ${index + 1} Desember',
                              style: GoogleFonts.lato(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              'Hadir',
                              style: GoogleFonts.lato(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      );
                    })
              ],
            )
          ],
        ));
  }
}

AppBar appbarSiswa() {
  SiswatabData siswa = Get.arguments;
  final HomeController homeC = Get.find();
  return AppBar(
    backgroundColor: whiteColor,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Iconsax.arrow_left,
        color: blackColor,
      ),
    ),
    actions: [
      PopupMenuButton(
          icon: Icon(
            Icons.more_vert_rounded,
            color: Colors.grey.shade600,
          ),
          itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Ubah Siswa',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      'Hapus Siswa',
                      style: GoogleFonts.lato(fontSize: 14),
                    )),
              ],
          onSelected: ((int menu) {
            if (menu == 1) {
              Get.toNamed(Routes.ADD_KELAS, arguments: siswa);
            } else {
              homeC.kelasM.deleteSiswa(siswa);
              Get.back();
            }
          })),
    ],
  );
}
