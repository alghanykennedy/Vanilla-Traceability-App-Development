import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/track/controllers/track_controller.dart';

class TrackBottomSheet extends GetView<TrackController> {
  const TrackBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CText(
          "4517 Washington Ave. Manchester, Kentucky 39595",
          textAlign: TextAlign.center,
          style: CFonts.inter(6, 12),
        ),
        const CSizedBox(
          height: 12,
        ),
        CSubmitButton(
          onTap: () {
            Get.back();
          },
          action: "Choose location",
        )
      ],
    );
  }
}
