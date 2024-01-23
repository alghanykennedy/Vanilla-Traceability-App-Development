import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

import '../../../core/assets.dart';

class ProfileController extends GetxController {
  final data = <String, String>{
    "Address": icAddress,
    "Payment": icPayment,
    "Notification": icNotification,
    "Privacy Policy": icPrivacyPolicy,
    "help Center": icHelpCenter,
  };

  void onTap(int index) {
    String route = "";

    switch (index) {
      case 0:
        route = "";
      case 1:
        route = "";
      case 2:
        route = "";
      case 3:
        route = "";
      case 4:
        route = "";
    }

    Get.toNamed(route);
  }

  void logout() {
    Get.back();

    Get.offAllNamed(Routes.LOGIN);
  }
}
