import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _onInit();
    super.onInit();
  }

  Future<void> _onInit() async {
    late String route;

    await Future.delayed(const Duration(seconds: 3));

    route = Routes.ONBOARDING;

    Get.offAllNamed(route);
  }
}
