import 'package:get/get.dart';

import '../modules/absen/bindings/absen_binding.dart';
import '../modules/absen/views/absen_view.dart';
import '../modules/add_absensi/bindings/add_absensi_binding.dart';
import '../modules/add_absensi/views/add_absensi_view.dart';
import '../modules/add_kelas/bindings/add_kelas_binding.dart';
import '../modules/add_kelas/views/add_kelas_view.dart';
import '../modules/add_siswa/bindings/add_siswa_binding.dart';
import '../modules/add_siswa/views/add_siswa_view.dart';
import '../modules/detail_absen/bindings/detail_absen_binding.dart';
import '../modules/detail_absen/views/detail_absen_view.dart';
import '../modules/detail_siswa/bindings/detail_siswa_binding.dart';
import '../modules/detail_siswa/views/detail_siswa_view.dart';
import '../modules/edit_absen/bindings/edit_absen_binding.dart';
import '../modules/edit_absen/views/edit_absen_view.dart';
import '../modules/edit_kelas/bindings/edit_kelas_binding.dart';
import '../modules/edit_kelas/views/edit_kelas_view.dart';
import '../modules/export/bindings/export_binding.dart';
import '../modules/export/views/export_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABSEN,
      page: () => const AbsenView(),
      binding: AbsenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.EXPORT,
      page: () => const ExportView(),
      binding: ExportBinding(),
    ),
    GetPage(
      name: _Paths.ADD_KELAS,
      page: () => const AddKelasView(),
      binding: AddKelasBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_KELAS,
      page: () => const EditKelasView(),
      binding: EditKelasBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ABSEN,
      page: () => const DetailAbsenView(),
      binding: DetailAbsenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_SISWA,
      page: () => const AddSiswaView(),
      binding: AddSiswaBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ABSENSI,
      page: () => const AddAbsensiView(),
      binding: AddAbsensiBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SISWA,
      page: () => const DetailSiswaView(),
      binding: DetailSiswaBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ABSEN,
      page: () => const EditAbsenView(),
      binding: EditAbsenBinding(),
    ),
  ];
}
