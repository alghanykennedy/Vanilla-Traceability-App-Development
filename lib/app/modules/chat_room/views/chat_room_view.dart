import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/assets.dart';
import 'package:vanilla_traceability_app/app/core/page.dart';

import '../controllers/chat_room_controller.dart';
import 'components/chat_room_bottom_sheet.dart';
import 'components/chat_room_empty.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  const ChatRoomView({super.key});
  @override
  Widget build(BuildContext context) {
    return const CPage(
      title: "Admin",
      leadingImg: imgProfile,
      backBtn: true,
      padding: EdgeInsets.fromLTRB(18, 30, 18, 120),
      bottomSheet: ChatRoomBottomSheet(),
      children: [
        ChatRoomEmpty(),
      ],
    );
  }
}
