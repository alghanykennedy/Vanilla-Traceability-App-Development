import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

bool isEmpty(dynamic value) => ['null', '', '[]', '{}', '0'].contains("$value");

bool isNotEmpty(dynamic value) =>
    !['null', '', '[]', '{}', '0'].contains("$value");

String formatDate(String date) =>
    DateFormat("d MMM y", "id").format(DateTime.parse(date));

void showSnack(String errorMsg) {
  ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      content: Center(
        child: CText(
          errorMsg,
          maxLines: 10,
          style: CFonts.dmSans(4, 14),
          textAlign: TextAlign.center,
        ),
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
      ),
      dismissDirection: DismissDirection.vertical,
      margin: EdgeInsets.only(
        bottom: Get.context!.height * .2,
        left: 80,
        right: 80,
      ),
      padding: const EdgeInsets.all(12),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: const Color(0xFF323030),
    ),
  );
}
