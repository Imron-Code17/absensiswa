import 'package:absensiswa/app/modules/detail_absen/views/absen_siswa.dart';
import 'package:absensiswa/app/modules/detail_absen/views/kelas_appbar.dart';
import 'package:absensiswa/app/modules/detail_absen/views/siswa_kelas.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_absen_controller.dart';

class DetailAbsenView extends GetView<DetailAbsenController> {
  const DetailAbsenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: kelasApp(),
          body: TabBarView(
            children: [siswaKelas(context), absenSiswa(context)],
          )),
    );
  }
}
