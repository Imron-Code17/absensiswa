import 'package:absensiswa/component/absen.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/add_absensi_controller.dart';

class AddAbsensiView extends GetView<AddAbsensiController> {
  const AddAbsensiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Iconsax.arrow_left,
              color: blackColor,
            ),
          ),
          elevation: 1,
          title: Text(
            'Buat Absensi',
            style: GoogleFonts.lato(
                fontSize: 18, fontWeight: FontWeight.w600, color: blackColor),
          ),
          centerTitle: false,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () => Get.back(),
          child: Icon(Ionicons.checkbox_outline),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                color: whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        child: Text(
                      'Siswa(4)',
                      style: GoogleFonts.lato(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    )),
                    SizedBox(
                        child: Row(
                      children: [
                        Text(
                          'Hadir',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Alfa',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Izin',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Sakit',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 15),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(height: 2),
              Column(
                verticalDirection: VerticalDirection.down,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 70,
                            width: double.infinity,
                            color: whiteColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Moch Ali Imron',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Absen(
                                      value: "Hadir",
                                      title: null,
                                    ),
                                    Absen(
                                      value: "Alfa",
                                      title: null,
                                    ),
                                    Absen(
                                      value: "Izin",
                                      title: null,
                                    ),
                                    Absen(
                                      value: "Sakit",
                                      title: null,
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      })
                ],
              )
            ],
          ),
        ));
  }
}
