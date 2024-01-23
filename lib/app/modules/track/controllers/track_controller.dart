import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/helper.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';

class TrackController extends GetxController {
  final quantity = 0.obs;
  final map = MapController();

  List<StepperData> stepperData = [
    StepperData(
      title: StepperText("Shipment Placed"),
      subtitle: StepperText("23 Aug 2023, 04:25 PM"),
      iconWidget: Container(
        decoration: const BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Center(
          child: Icon(Icons.check, color: white, size: 16),
        ),
      ),
    ),
    StepperData(
      title: StepperText("In Progress"),
      subtitle: StepperText("23 Aug 2023, 06:13 PM"),
      iconWidget: Container(
        decoration: const BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Center(
          child: Icon(Icons.check, color: white, size: 16),
        ),
      ),
    ),
    StepperData(
      title: StepperText("Shipped"),
      subtitle: StepperText("24 Aug 2023, 08:00 AM"),
    ),
    StepperData(
      title: StepperText("Delivered"),
      subtitle: StepperText("24 Aug 2023, 11: 00 AM"),
    ),
  ];

  void increment() => quantity.value++;
  void decrement() {
    if (quantity > 0) {
      quantity.value--;
    } else {
      showSnack("Quantity can't less than 0");
    }
  }
}
