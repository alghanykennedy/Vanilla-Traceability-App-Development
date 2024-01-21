import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';

class ProfilePhotoView extends StatelessWidget {
  const ProfilePhotoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CPadding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(90),
              ),
              child: Image.asset(
                imgProfile,
                height: 120.r,
                width: 120.r,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const CSizedBox(height: 12),
          CText(
            "Change Photo Profile",
            style: CFonts.inter(5, 16, primary),
          ),
        ],
      ),
    );
  }
}
