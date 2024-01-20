import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

import '../../../core/assets.dart';
import '../../../data/models/on_boarding_model.dart';

class OnboardingController extends GetxController {
  final pageC = PageController();

  final onBoardingData = <OnBoardingModel>[
    OnBoardingModel(
      img: imgOnBoarding1,
      title: "sem et tortor consequat id porta nibh venenatis",
    ),
    OnBoardingModel(
      img: imgOnBoarding2,
      title: "massa sapien faucibus et molestie ac feugiat sed",
    ),
    OnBoardingModel(
      img: imgOnBoarding3,
      title: "quam quisque id diam vel quam elementum pulvinar",
    ),
  ];

  final currentPage = 0.obs;

  void nextPage({bool arrow = false}) {
    if (arrow && currentPage.value > 0) {
      pageC.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    } else if (currentPage.value == 2) {
      Get.offAllNamed(Routes.HOME);
    } else {
      pageC.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
  }

  void onPageChanged(int page) {
    currentPage.value = page;
  }
}
