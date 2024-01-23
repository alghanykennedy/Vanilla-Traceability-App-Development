import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/validation.dart';
import 'package:vanilla_traceability_app/app/core/widgets/auth_header.dart';
import 'package:vanilla_traceability_app/app/core/widgets/formfield.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/submit_button.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> with Validation {
  const RegisterView({super.key});

  void _login() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SingleChildScrollView(
          padding: EdgeInsets.only(left: 18.w, top: 20.h, right: 18.w),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: AuthHeader(
                    title: titleButtonRegister,
                    subtitle: titleCreateAccount,
                  ),
                ),
                const TitleFormRegister(
                  title: titleFullName,
                ),
                const CSizedBox(
                  height: 8,
                ),
                CFormField(
                  controller: controller.name,
                  validator: inputRequired,
                  keyboardType: TextInputType.name,
                ),
                const CSizedBox(
                  height: 24,
                ),
                const TitleFormRegister(
                  title: titleFormPhoneNumber,
                ),
                const CSizedBox(
                  height: 8,
                ),
                CFormField(
                  controller: controller.phoneNumber,
                  validator: inputRequired,
                  keyboardType: TextInputType.phone,
                ),
                const CSizedBox(
                  height: 24,
                ),
                const TitleFormRegister(
                  title: titleAddress,
                ),
                const CSizedBox(
                  height: 8,
                ),
                CFormField(
                  controller: controller.address,
                  validator: inputRequired,
                  keyboardType: TextInputType.streetAddress,
                ),
                const CSizedBox(
                  height: 24,
                ),
                const TitleFormRegister(
                  title: titleFormPassword,
                ),
                const CSizedBox(
                  height: 8,
                ),
                CFormField(
                  controller: controller.password,
                  validator: passwordRequired,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    controller.setPassword(value);
                  },
                ),
                const CSizedBox(
                  height: 5,
                ),
                controller.passwordCustomer.value.isNotEmpty &&
                        controller.passwordCustomer.value.length < 8
                    ? Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: CText(
                          'Password minimum has 8 character',
                          style: CFonts.inter(4, 12, red),
                        ),
                      )
                    : controller.passwordCustomer.isEmpty
                        ? const SizedBox()
                        : const SizedBox(),
                const CSizedBox(
                  height: 65,
                ),
                CSubmitButton(
                  color: primary,
                  onTap: controller.register,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  actionStyle: CFonts.dmSans(7, 16),
                  action: titleButtonRegister,
                  enabled: controller.isEnable.value,
                ),
                const CSizedBox(height: 24),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CText(
                        alreadyHaveAnAccount,
                        style: CFonts.inter(4, 12),
                      ),
                      TextButton(
                        onPressed: _login,
                        child: CText(
                          titleButtonLogin,
                          color: primary,
                          style: CFonts.inter(4, 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleFormRegister extends StatelessWidget {
  const TitleFormRegister({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CText(
          title,
          style: CFonts.inter(4, 12),
        ),
        const CSizedBox(
          width: 5,
        ),
        CText(
          "*",
          style: CFonts.inter(4, 12, red),
        ),
      ],
    );
  }
}
