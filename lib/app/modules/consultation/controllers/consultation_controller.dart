import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

import '../../../core/theme.dart';
import '../../../data/models/consultation_item_model.dart';

class ConsultationController extends GetxController {
  final consultationData = <ConsultationItemModel>[
    ConsultationItemModel(
      title: "Consultation 1",
      subTitle: "Ok thankyou..",
      date: "Mon, 01-22-2024",
      status: "On Going",
      statusColor: green12,
      textColor: green,
    ),
    ConsultationItemModel(
      title: "Consultation 2",
      subTitle: "You're Welcome",
      date: "Sun, 01-21-2024",
      status: "Finish",
      statusColor: red10,
      textColor: red,
    ),
    ConsultationItemModel(
      title: "Consultation 3",
      subTitle: "You're Welcome",
      date: "Mon, 01-22-2024",
      status: "On Going",
      statusColor: green12,
      textColor: green,
    ),
    ConsultationItemModel(
      title: "Consultation 4",
      subTitle: "You're Welcome",
      date: "Sun, 01-21-2024",
      status: "Finish",
      statusColor: red10,
      textColor: red,
    ),
    ConsultationItemModel(
      title: "Consultation 5",
      subTitle: "You're Welcome",
      date: "Mon, 01-22-2024",
      status: "On Going",
      statusColor: green12,
      textColor: green,
    ),
    ConsultationItemModel(
      title: "Consultation 6",
      subTitle: "You're Welcome",
      date: "Sun, 01-21-2024",
      status: "Finish",
      statusColor: red10,
      textColor: red,
    ),
    ConsultationItemModel(
      title: "Consultation 7",
      subTitle: "You're Welcome",
      date: "Mon, 01-22-2024",
      status: "On Going",
      statusColor: green12,
      textColor: green,
    ),
    ConsultationItemModel(
      title: "Consultation 8",
      subTitle: "You're Welcome",
      date: "Sun, 01-21-2024",
      status: "Finish",
      statusColor: red10,
      textColor: red,
    ),
  ];

  void newConsult() {
    Get.toNamed(Routes.CHAT_ROOM);
  }

  void openConsult() {
    Get.toNamed(Routes.CHAT_ROOM);
  }
}
