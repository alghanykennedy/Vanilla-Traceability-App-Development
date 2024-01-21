import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/consultation_controller.dart';

class ConsultationView extends GetView<ConsultationController> {
  const ConsultationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConsultationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ConsultationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
