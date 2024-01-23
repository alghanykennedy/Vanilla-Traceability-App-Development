import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/image_picture.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

class CItemCard extends StatelessWidget {
  const CItemCard(
      {super.key,
      required this.image,
      required this.title,
      required this.author,
      this.price,
      required this.onTap,
      required this.date});

  final String image, title, author, date;
  final String? price;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    const double imgHeight = 64;
    const double imgWidth = 74;

    return CPadding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            color: white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 2),
                color: grey40,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: CImg(
                  image,
                  height: imgHeight,
                  width: imgWidth,
                ),
              ),
              const CSizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CText(
                      title,
                      style: CFonts.inter(5, 14),
                      maxLines: 2,
                    ),
                    const CSizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CText(
                          author,
                          maxLines: 2,
                          style: CFonts.inter(4, 12, greyText),
                        ),
                        CText(
                          date,
                          maxLines: 1,
                          style: CFonts.inter(4, 12, greyText),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
