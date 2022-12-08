import 'package:absensiswa/app/modules/home/views/home_appbar.dart';
import 'package:absensiswa/app/modules/home/views/home_floating.dart';
import 'package:absensiswa/component/size.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/db/absen_db.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        appBar: homeApp(context),
        floatingActionButton: homeFloat(),
        body: StreamBuilder<List<Kela>>(
          stream: controller.kelasM.fetchAllKelas(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snap.data?.length == 0 || snap.data == null) {
              return Center(
                child: Text('Tidak ada data'),
              );
            }
            return ListView.builder(
                itemCount: snap.data!.length,
                itemBuilder: (context, index) {
                  Kela kelas = snap.data![index];
                  return Container(
                    color: whiteColor,
                    child: ListTile(
                        onTap: () =>
                            Get.toNamed(Routes.DETAIL_ABSEN, arguments: kelas),
                        title: Text(
                          "Kelas ${kelas.kelas}",
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        trailing: SizedBox(
                          width: width * 0.32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${kelas.desc}",
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500),
                              ),
                              PopupMenuButton(
                                  icon: Icon(
                                    Icons.more_vert_rounded,
                                    color: Colors.grey.shade600,
                                  ),
                                  itemBuilder: (context) => [
                                        PopupMenuItem(
                                            value: 1,
                                            child: Text(
                                              'Ubah Kelas',
                                              style: GoogleFonts.lato(
                                                  fontSize: 14),
                                            )),
                                        PopupMenuItem(
                                            value: 2,
                                            child: Text(
                                              'Hapus Kelas',
                                              style: GoogleFonts.lato(
                                                  fontSize: 14),
                                            )),
                                      ],
                                  onSelected: ((int menu) {
                                    if (menu == 1) {
                                      Get.toNamed(Routes.EDIT_KELAS,
                                          arguments: kelas);
                                    } else {
                                      controller.kelasM.deleteKelas(kelas);
                                    }
                                  })),
                            ],
                          ),
                        )),
                  );
                });
          },
        ));
  }
}
