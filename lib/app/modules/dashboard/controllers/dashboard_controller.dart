import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/helper.dart';
import 'package:vanilla_traceability_app/app/modules/consultation/views/consultation_view.dart';
import 'package:vanilla_traceability_app/app/modules/home/views/home_view.dart';
import 'package:vanilla_traceability_app/app/modules/profile/views/profile_view.dart';
import 'package:vanilla_traceability_app/app/modules/track/views/track_view.dart';

import '../../../core/assets.dart';

class DashboardController extends GetxController {
  final pages = const <Widget>[
    HomeView(),
    TrackView(),
    ConsultationView(),
    ProfileView(),
  ];

  final menuItems = <String, String>{
    "Home": icHome,
    "Track": icTrack,
    "Consultation": icConsultation,
    "Profile": icProfile,
  };

  final currentIndex = 0.obs;

  bool isSelected(int index) => currentIndex.value == index;

  void selectMenu(int index) {
    currentIndex.value = index;
  }

  int tapCount = 0;

  Timer? _timer;

  Future<bool> onWillPop() async {
    Duration duration = const Duration(milliseconds: 100);

    tapCount++;

    if (tapCount <= 1) {
      _timer = Timer.periodic(duration, (t) {
        if (t.tick >= 10) {
          tapCount = 0;
          _timer!.cancel();
        }
      });

      showSnack("Press once again to exit");
      return false;
    } else {
      return true;
    }
  }
}
