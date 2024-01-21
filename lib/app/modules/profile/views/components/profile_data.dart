import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/validation.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/modules/profile/controllers/profile_controller.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/formfield.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/svg_picture.dart';
import '../../../../core/widgets/text.dart';

class ProfileDataView extends GetView<ProfileController> with Validation {
  const ProfileDataView({super.key});
  @override
  Widget build(BuildContext context) {
    return CPadding(
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
      child: Form(
        key: controller.editKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CText(
              "Profile Information",
              style: CFonts.inter(6, 14),
            ),
            const CSizedBox(height: 8),
            CText(
              "Name",
              style: CFonts.inter(4, 12),
            ),
            const CSizedBox(height: 8),
            CFormField(
              controller: controller.name,
              validator: inputRequired,
            ),
            const CSizedBox(height: 18),
            CText(
              "Email (Optional)",
              style: CFonts.inter(4, 12),
            ),
            const CSizedBox(height: 8),
            CFormField(
              controller: controller.email,
              enabled: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const CSizedBox(height: 18),
            CText(
              "Phone Number",
              style: CFonts.inter(4, 12),
            ),
            const CSizedBox(height: 8),
            CFormField(
              controller: controller.phone,
              keyboardType: TextInputType.number,
              validator: inputRequired,
            ),
            const CSizedBox(height: 18),
            CText(
              "Address",
              style: CFonts.inter(4, 12),
            ),
            const CSizedBox(height: 8),
            CFormField(
              controller: controller.address,
              keyboardType: TextInputType.text,
              validator: inputRequired,
            ),
            const CSizedBox(height: 24),
            InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: CPadding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CSvg(icDelete),
                    const CSizedBox(width: 8),
                    CText(
                      "Delete Account",
                      style: CFonts.inter(5, 14, red),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: CPadding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CSvg(
                      icLock,
                      color: greyText,
                    ),
                    const CSizedBox(width: 8),
                    CText(
                      "Change Password?",
                      style: CFonts.inter(5, 14, greyText),
                    )
                  ],
                ),
              ),
            ),
            const CSizedBox(height: 40),
            CSubmitButton(
              onTap: () {},
              large: true,
              action: "Save",
            ),
          ],
        ),
      ),
    );
  }
}
