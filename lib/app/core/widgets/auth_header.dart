import 'package:flutter/material.dart';
import 'package:vanilla_traceability_app/app/core/assets.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/image_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CImg(
          imgLogo,
          radius: 80,
        ),
        const CSizedBox(
          height: 15,
        ),
        CText(
          title,
          style: CFonts.inter(7, 20),
        ),
        CText(
          subtitle,
          style: CFonts.inter(4, 14),
        ),
        const CSizedBox(
          height: 35,
        ),
      ],
    );
  }
}
