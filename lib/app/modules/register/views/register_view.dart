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
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
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
              CText(
                titleFullName,
                style: CFonts.inter(4, 12),
              ),
              const CSizedBox(
                height: 8,
              ),
              CFormField(
                controller: controller.name,
                validator: inputRequired,
              ),
              const CSizedBox(
                height: 24,
              ),
              CText(
                titleAddress,
                style: CFonts.inter(4, 12),
              ),
              const CSizedBox(
                height: 8,
              ),
              CFormField(
                controller: controller.address,
                validator: inputRequired,
              ),
              const CSizedBox(
                height: 24,
              ),
              CText(
                titleFormPhoneNumber,
                style: CFonts.inter(4, 12),
              ),
              const CSizedBox(
                height: 8,
              ),
              CFormField(
                controller: controller.phoneNumber,
                validator: inputRequired,
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
              const CSizedBox(
                height: 40,
              ),
              CSubmitButton(
                color: primary,
                onTap: controller.register,
                padding: const EdgeInsets.symmetric(vertical: 12),
                actionStyle: CFonts.dmSans(7, 16),
                action: titleButtonRegister,
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
              const CSizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
