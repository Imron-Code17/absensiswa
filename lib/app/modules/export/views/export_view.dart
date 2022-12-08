import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/export_controller.dart';

class ExportView extends GetView<ExportController> {
  const ExportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExportView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExportView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
