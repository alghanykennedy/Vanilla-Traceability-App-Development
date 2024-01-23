import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/consultation/controllers/consultation_controller.dart';

class ConsultationItem extends GetView<ConsultationController> {
  const ConsultationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CPadding(
      padding: EdgeInsets.only(bottom: 18.h),
      child: InkWell(
        onTap: controller.openConsult,
        child: Container(
          padding: EdgeInsets.all(18.r),
          decoration: const BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 2),
                color: shadowColor,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CText(
                      "Consultation 1",
                      style: CFonts.inter(6, 14),
                    ),
                    CText(
                      "Ok thankyou..",
                      style: CFonts.inter(4, 12),
                    ),
                    CText(
                      "Wed, 01-22-2024",
                      style: CFonts.inter(4, 10, greyText),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Material(
                  color: green12,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                  child: CPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    child: CText(
                      "On Going",
                      style: CFonts.inter(4, 10, green),
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
