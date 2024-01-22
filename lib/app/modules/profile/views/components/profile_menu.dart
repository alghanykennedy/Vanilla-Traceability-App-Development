import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/assets.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/profile/controllers/profile_controller.dart';

import '../../../../core/widgets/pop.dart';
import '../../../../core/widgets/svg_picture.dart';

class ProfileMenu extends GetView<ProfileController> {
  const ProfileMenu({super.key});

  void _exit() {
    Get.dialog(
      CPop(
        children: [
          CText(
            "Logout Account",
            style: CFonts.dmSans(5, 14),
          ),
          const SizedBox(
            height: 8,
          ),
          CText(
            "Want to log out of your Account?",
            style: CFonts.dmSans(4, 14),
            maxLines: 10,
          ),
          const CSizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CSubmitButton(
                onTap: Get.back,
                action: "Cancel",
                borderRadius: 4,
                outlined: true,
              ),
              const CSizedBox(
                width: 12,
              ),
              CSubmitButton(
                onTap: controller.logout,
                action: "Yes, logout",
                borderRadius: 4,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CPadding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CText(
            "Menu",
            style: CFonts.dmSans(7, 14),
          ),
        ),
        const CSizedBox(
          height: 6,
        ),
        ...List.generate(
          controller.data.length,
          (index) => _item(
            onTap: () {},
            icon: controller.data.values.elementAt(index),
            action: controller.data.keys.elementAt(index),
          ),
        ),
        const CSizedBox(
          height: 18,
        ),
        _item(
          icon: icLogout,
          action: "Logout",
          onTap: _exit,
          color: red,
          suffix: false,
          iconColor: red,
        ),
      ],
    );
  }

  Widget _item({
    required String icon,
    required String action,
    bool? suffix,
    Color? color,
    Color? iconColor,
    required void Function() onTap,
  }) {
    return CPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
        color: white,
        child: InkWell(
          onTap: onTap,
          child: CPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
            child: Row(
              children: [
                CSvg(
                  icon,
                  radius: 24,
                  color: iconColor,
                ),
                const CSizedBox(width: 8),
                CText(
                  action,
                  style: CFonts.inter(5, 13, color),
                ),
                const Spacer(),
                if (suffix ?? true)
                  const CSvg(
                    icRight,
                    radius: 24,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
