import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:vanilla_traceability_app/app/core/constants.dart';
import 'package:vanilla_traceability_app/app/core/validation.dart';
import 'package:vanilla_traceability_app/app/core/widgets/auth_header.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/submit_button.dart';

import '../../../core/theme.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> with Validation {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                title: titleButtonForgoPassword,
                subtitle: "We already sent otp to phone number *********687",
              ),
              Pinput(
                autofocus: true,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                controller: controller.pin,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                focusNode: controller.otpNode,
                onCompleted: controller.onCompleted,
                validator: (value) {
                  if (value == '1111') return null;

                  /// Text will be displayed under the Pinput
                  return 'Pin is incorrect';
                },
              ),
              const CSizedBox(
                height: 40,
              ),
              CSubmitButton(
                onTap: controller.verifyOtp,
                action: "Verification",
                large: true,
                enabled: controller.enableButton.value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
