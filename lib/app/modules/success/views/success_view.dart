import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/image_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../../../core/assets.dart';
import '../controllers/success_controller.dart';

class SuccessView extends GetView<SuccessController> {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const CImg(
            imgSuccess,
            height: 180,
            width: 150,
          ),
          const CSizedBox(
            height: 24,
          ),
          CText(
            controller.args.title,
            style: CFonts.inter(7, 16),
          ),
          const CSizedBox(
            height: 12,
          ),
          CPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CText(
              controller.args.subtitle,
              style: CFonts.inter(4, 12),
              maxLines: 10,
              textAlign: TextAlign.center,
            ),
          ),
          const CSizedBox(
            height: 30,
          ),
          CPadding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                if (![controller.args.secondAction, controller.args.secondTap]
                    .contains(null)) ...[
                  Expanded(
                    child: CSubmitButton(
                      onTap: controller.args.secondTap!,
                      large: true,
                      outlined: true,
                      action: controller.args.secondAction!,
                    ),
                  ),
                  const CSizedBox(
                    width: 12,
                  ),
                ],
                Expanded(
                  child: CSubmitButton(
                    onTap: controller.args.firstTap,
                    large: true,
                    action: controller.args.firstAction,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
