import 'package:get/get.dart';

import '../../dashboard/controllers/dashboard_controller.dart';
import '../controllers/consultation_controller.dart';

class ConsultationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultationController>(
      () => ConsultationController(),
    );
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
