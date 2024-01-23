import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/validation.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/routes/app_pages.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/auth_header.dart';
import '../../../core/widgets/formfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with Validation {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Form(
          key: controller.loginKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: AuthHeader(
                  title: titleLogin,
                  subtitle: subtitleLogin,
                ),
              ),
              CText(
                titleFormPhoneNumber,
                style: CFonts.inter(4, 12),
              ),
              const CSizedBox(
                height: 8,
              ),
              CFormField(
                controller: controller.noHandphone,
                keyboardType: TextInputType.number,
              ),
              const CSizedBox(
                height: 24,
              ),
              CText(
                titleFormPassword,
                style: CFonts.inter(4, 12),
              ),
              const CSizedBox(
                height: 8,
              ),
              CFormField(
                controller: controller.password,
                validator: passwordRequired,
                keyboardType: TextInputType.visiblePassword,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: CText(
                    titleButtonForgoPassword,
                    color: primary,
                    style: CFonts.inter(4, 12),
                  ),
                ),
              ),
              const CSizedBox(
                height: 40,
              ),
              CSubmitButton(
                color: primary,
                onTap: controller.login,
                large: true,
                action: titleButtonLogin,
              ),
              const CSizedBox(
                height: 34,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CText(
                      titleDontHaveAnAccount,
                      style: CFonts.inter(4, 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: CText(
                        titleButtonRegister,
                        color: primary,
                        style: CFonts.inter(4, 12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
