import 'package:absensiswa/app/modules/absen/views/absen_view.dart';
import 'package:absensiswa/app/modules/export/views/export_view.dart';
import 'package:absensiswa/app/modules/home/views/home_view.dart';
import 'package:absensiswa/app/modules/profile/views/profile_view.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [HomeView(), AbsenView(), ExportView(), ProfileView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.tabIndex,
            onTap: controller.changeIndex,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey.shade500,
            selectedLabelStyle: GoogleFonts.lato(),
            items: [
              _itemBar(IconlyBold.home, "Home"),
              _itemBar(IconlyBold.document, "Absen"),
              _itemBar(IconlyBold.paper_fail, "Export"),
              _itemBar(IconlyBold.profile, "Profile")
            ]),
      );
    });
  }
}

_itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
