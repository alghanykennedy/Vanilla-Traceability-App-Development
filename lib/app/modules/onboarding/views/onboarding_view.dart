import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/image_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/svg_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../../../core/assets.dart';
import '../../../core/widgets/padding.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const SizedBox(
          height: 40,
          width: 50,
          child: CImg(imgLogo),
        ),
      ),
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Column(
          children: [
            Flexible(
              child: PageView.builder(
                controller: controller.pageC,
                onPageChanged: controller.onChanged,
                itemCount: controller.onBoardingData.length,
                itemBuilder: (_, index) {
                  return Scaffold(
                    body: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CImg(
                          controller.onBoardingData[index].img,
                        ),
                        CPadding(
                          padding: const EdgeInsets.fromLTRB(40, 80, 40, 12),
                          child: CText(
                            controller.onBoardingData[index].title,
                            style: CFonts.inter(7, 16),
                            maxLines: 5,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            CPadding(
              padding: const EdgeInsets.only(top: 28),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  3,
                  (index) {
                    return CPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Obx(
                        () => CircleAvatar(
                          backgroundColor: index == controller.currentPage.value
                              ? primary
                              : grey,
                          radius: 3.r,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            CPadding(
              padding: const EdgeInsets.fromLTRB(24, 80, 24, 80),
              child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: controller.currentPage.value == 0 ? 0 : 3.14159,
                      child: Material(
                        color: primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: InkWell(
                          onTap: () => controller.nextPage(arrow: true),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: const CPadding(
                            padding: EdgeInsets.all(14),
                            child: CSvg(icArrowRight),
                          ),
                        ),
                      ),
                    ),
                    if (controller.currentPage.value > 0) ...[
                      const Spacer(),
                      Material(
                        color: primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: InkWell(
                          onTap: controller.nextPage,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: CPadding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 14,
                            ),
                            child: Row(
                              children: [
                                CText(
                                  "Next",
                                  style: CFonts.inter(7, 16),
                                  color: white,
                                ),
                                const CSizedBox(
                                  width: 8,
                                ),
                                const CSvg(icArrowRight),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
