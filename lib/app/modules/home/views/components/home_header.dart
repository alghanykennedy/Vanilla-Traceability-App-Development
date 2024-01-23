import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/image_picture.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CPadding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: CText(
                "Todays Weather",
                style: CFonts.inter(7, 18, black),
              ),
            ),
            Material(
              color: secondary,
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
              child: CSizedBox(
                height: 185,
                width: context.width,
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                          bottom: 60,
                        ),
                        child: CImg(
                          imgWeather,
                          height: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CText(
                            "Bandung, 22 Jan 2024",
                            style: CFonts.inter(6, 14, white),
                          ),
                          const CSizedBox(
                            height: 8,
                          ),
                          CText(
                            "28 C",
                            style: CFonts.inter(8, 18, white),
                          ),
                          const CSizedBox(
                            height: 8,
                          ),
                          CText(
                            "Humidity 82%",
                            style: CFonts.inter(6, 14, white),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(color: white),
                          const SizedBox(
                            height: 10,
                          ),
                          CText(
                            "Today is a good day to apply pesticides.",
                            style: CFonts.inter(6, 14, white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
