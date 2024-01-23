import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/track/controllers/track_controller.dart';

class TrackDelivery extends GetView<TrackController> {
  const TrackDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CSizedBox(
          height: 24,
        ),
        CText(
          "Shipment Status",
          style: CFonts.inter(6, 14),
        ),
        AnotherStepper(
          scrollPhysics: const NeverScrollableScrollPhysics(),
          stepperList: controller.stepperData,
          stepperDirection: Axis.vertical,
          activeBarColor: primary,
          inverted: false,
          activeIndex: 1,
          verticalGap: 30,
        ),
      ],
    );
  }
}
