import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/routes/app_arguments.dart';

class SuccessController extends GetxController {
  late SuccessArguments args;

  @override
  void onInit() {
    super.onInit();
    _onInit();
  }

  void _onInit() {
    args = Get.arguments;
  }
}
