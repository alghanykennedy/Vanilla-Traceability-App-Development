import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/svg_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';

class ChatRoomEmpty extends StatelessWidget {
  const ChatRoomEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.height - (kToolbarHeight.h * 4),
        width: context.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CSvg(
              icChatRoom,
              color: primary,
            ),
            CSizedBox(
              height: 10,
            ),
            CText("Send Message to start convertation"),
          ],
        ),
      ),
    );
  }
}
