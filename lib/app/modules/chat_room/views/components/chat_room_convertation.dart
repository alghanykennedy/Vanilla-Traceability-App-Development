import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/chat_room/controllers/chat_room_controller.dart';

import '../../../../core/assets.dart';
import '../../../../core/page.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/svg_picture.dart';
import 'chat_room_bottom_sheet.dart';

class ChatRoomConvertation extends GetView<ChatRoomController> {
  const ChatRoomConvertation({super.key});

  @override
  Widget build(BuildContext context) {
    return CPage(
      title: "Admin",
      leadingImg: imgProfile,
      backBtn: true,
      padding: const EdgeInsets.fromLTRB(18, 30, 18, 120),
      actions: [
        Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.r,
              ),
            ),
            side: const BorderSide(
              color: red,
            ),
          ),
          child: InkWell(
            onTap: controller.endSession,
            borderRadius: BorderRadius.all(
              Radius.circular(8.r),
            ),
            child: CPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  const CSvg(
                    icChatConsultation,
                    color: red,
                  ),
                  const CSizedBox(
                    width: 8,
                  ),
                  CText(
                    "Selesai",
                    style: CFonts.inter(5, 12, red),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      bottomSheet: const ChatRoomBottomSheet(),
      children: [
        Column(
          children: [
            _dateSession,
            _sentMessage(
              "Halo, I need some information",
            ),
            _infoMessage,
            _recievedMessage,
          ],
        )
      ],
    );
  }

  CPadding get _dateSession => CPadding(
        padding: const EdgeInsets.only(bottom: 18),
        child: Align(
          alignment: Alignment.center,
          child: CText(
            "Today",
            style: CFonts.inter(4, 12),
            height: 0,
          ),
        ),
      );

  CPadding _sentMessage(String message) => CPadding(
        padding: const EdgeInsets.only(
          bottom: 24,
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Material(
            color: primary,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            child: CPadding(
              padding: const EdgeInsets.all(12),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: Get.width * .6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CText(
                      message,
                      style: CFonts.inter(5, 14, white),
                      height: 0,
                      textAlign: TextAlign.left,
                      maxLines: 1000,
                    ),
                    CText(
                      "12:00",
                      style: CFonts.inter(4, 12, white),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  CPadding get _infoMessage => CPadding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Center(
          child: Material(
            color: green12,
            borderRadius: BorderRadius.all(
              Radius.circular(8.r),
            ),
            child: CPadding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outlined,
                    color: green,
                  ),
                  const CSizedBox(width: 8),
                  Expanded(
                    child: CText(
                      "Please wait, Admin will answer your question soon",
                      style: CFonts.inter(4, 12, green),
                      maxLines: 1000,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  CPadding get _recievedMessage => CPadding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Material(
            color: secondary,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            child: CPadding(
              padding: const EdgeInsets.all(12),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: Get.width * .6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CText(
                      "Halo, what can I do for you?",
                      style: CFonts.inter(5, 14, black),
                      height: 0,
                      textAlign: TextAlign.left,
                      maxLines: 1000,
                    ),
                    CText(
                      "12:10",
                      style: CFonts.inter(4, 12, black),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
