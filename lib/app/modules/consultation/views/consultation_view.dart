import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/page.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../../../core/widgets/padding.dart';
import '../controllers/consultation_controller.dart';

class ConsultationView extends GetView<ConsultationController> {
  const ConsultationView({super.key});
  @override
  Widget build(BuildContext context) {
    return CPage(
      title: "Consultation",
      defaultActions: true,
      children: [
        Row(
          children: [
            CText(
              "Newest",
              style: CFonts.inter(5, 16),
            ),
            const Spacer(),
            CSubmitButton(
              onTap: controller.newConsult,
              action: "New Consultation",
            ),
            const CSizedBox(
              height: 24,
            ),
          ],
        ),
        const CSizedBox(
          height: 24,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.consultationData.length,
              itemBuilder: (_, index) {
                final consulstationData = controller.consultationData[index];

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
                                  consulstationData.title,
                                  style: CFonts.inter(6, 14),
                                ),
                                CText(
                                  consulstationData.subTitle,
                                  style: CFonts.inter(4, 12),
                                ),
                                CText(
                                  consulstationData.date,
                                  style: CFonts.inter(4, 10, greyText),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Align(
                            alignment: Alignment.centerRight,
                            child: Material(
                              color: consulstationData.statusColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6),
                              ),
                              child: CPadding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 6,
                                ),
                                child: CText(
                                  consulstationData.status,
                                  style: CFonts.inter(
                                    4,
                                    10,
                                    consulstationData.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        // ...List.generate(
        //   2,
        //   (index) => const ConsultationItem(),
        // )
      ],
    );
  }
}
