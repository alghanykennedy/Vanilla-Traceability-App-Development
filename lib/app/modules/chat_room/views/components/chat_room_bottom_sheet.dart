import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/formfield.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/svg_picture.dart';
import 'package:vanilla_traceability_app/app/modules/chat_room/controllers/chat_room_controller.dart';

import '../../../../core/assets.dart';
import 'chat_room_convertation.dart';

class ChatRoomBottomSheet extends GetView<ChatRoomController> {
  const ChatRoomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CFormField(
      controller: controller.chat,
      borderColor: primary,
      focusedColor: primary,
      prefixIcon: InkWell(
        onTap: () {},
        child: const CPadding(
          padding: EdgeInsets.all(12),
          child: CSvg(
            icAttachImage,
            color: primary,
            radius: 20,
          ),
        ),
      ),
      hintText: "Write a message...",
      suffixIcon: InkWell(
        onTap: () {
          Get.to(() => const ChatRoomConvertation());
        },
        child: const CPadding(
          padding: EdgeInsets.all(12),
          child: CSvg(
            icSend,
            color: primary,
            radius: 20,
          ),
        ),
      ),
    );
  }
}
