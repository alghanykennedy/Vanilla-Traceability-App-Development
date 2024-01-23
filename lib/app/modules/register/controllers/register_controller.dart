import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

import '../../../core/helper.dart';

class RegisterController extends GetxController {
  final name = TextEditingController();
  final address = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final gender = "L".obs;
  final registerKey = GlobalKey<FormState>();

  final RxString passwordCustomer = "".obs;
  final RxBool isEnable = false.obs;

  void enableButton() {
    isEnable.value = passwordCustomer.value.length >= 8 == true;
  }

  void register() {
    Get.offAllNamed(Routes.HOME);
  }

  void setPassword(value) {
    passwordCustomer.value = value;
    enableButton();
  }

  void selectGender(String? selectGender) {
    if (isNotEmpty(selectGender)) gender.value = selectGender!;
  }
}
