import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/pop.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

class ChatRoomController extends GetxController {
  final chat = TextEditingController();

  void endSession() {
    Get.dialog(
      CPop(
        children: [
          CText(
            "Finish this convertation?",
            style: CFonts.dmSans(5, 14),
            maxLines: 5,
            height: 0,
          ),
          const CSizedBox(
            height: 6,
          ),
          CText(
            "Your convertation with Admin will be over.",
            style: CFonts.dmSans(4, 14, greyText),
            maxLines: 20,
          ),
          const CSizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CSubmitButton(
                onTap: Get.back,
                action: "Cancel",
                borderRadius: 8,
                outlined: true,
              ),
              const CSizedBox(
                width: 12,
              ),
              CSubmitButton(
                onTap: () {
                  Get.toNamed(Routes.DASHBOARD, arguments: 2);
                },
                action: "Yes, finish it",
                borderRadius: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
