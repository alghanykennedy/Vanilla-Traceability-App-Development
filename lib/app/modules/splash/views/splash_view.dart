import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/widgets/image_picture.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return const Scaffold(
      body: Center(
        child: CImg(
          imgLogo,
        ),
      ),
    );
  }
}
