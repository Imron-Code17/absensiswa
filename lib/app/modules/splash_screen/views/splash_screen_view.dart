import 'dart:async';

import 'package:absensiswa/app/routes/app_pages.dart';
import 'package:absensiswa/component/size.dart';
import 'package:absensiswa/theme/colos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Get.offAllNamed(Routes.NAVBAR));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: whiteColor,
      child: SizedBox(
        height: height * 0.8,
        width: width * 0.8,
        child: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_SeIODexgqB.json'),
      ),
    ));
  }
}
