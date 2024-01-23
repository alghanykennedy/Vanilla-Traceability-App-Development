import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_traceability_app/app/core/widgets/image_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import '../theme.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.r,
          padding: EdgeInsets.all(12.r),
          margin: EdgeInsets.only(left: 10.w, right: 10.w),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: vanilla,
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 30,
                offset: Offset(0, 15),
              ),
            ],
          ),
          child: Center(
            child: CImg(
              image,
              height: 50,
              width: 50,
            ),
          ),
        ),
        const CSizedBox(
          height: 5,
        ),
        CText(
          title,
          style: CFonts.inter(5, 14),
        )
      ],
    );
  }
}
