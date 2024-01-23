import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';

import 'track_maps.dart';

class TrackAddress extends StatelessWidget {
  const TrackAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                "Shipping address",
                style: CFonts.inter(6, 14),
              ),
              const CSizedBox(
                height: 8,
              ),
              Row(
                children: [
                  CText(
                    "Mineral Fields",
                    style: CFonts.inter(6, 12, greyText),
                  ),
                  const CSizedBox(
                    width: 6,
                  ),
                  Material(
                    color: primary,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: CPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: CText(
                        "Utama",
                        style: CFonts.inter(5, 12, white),
                      ),
                    ),
                  )
                ],
              ),
              const CSizedBox(
                height: 8,
              ),
              CText(
                "Alghany Kennedy (+62)85872049687",
                style: CFonts.inter(4, 12, greyText),
                maxLines: 10,
              ),
              const CSizedBox(
                height: 4,
              ),
              CText(
                "4517 Washington Ave. Manchester, Kentucky 39595",
                style: CFonts.inter(4, 12, greyText),
                maxLines: 10,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(const TrackMaps());
          },
          child: CPadding(
            padding: const EdgeInsets.all(4),
            child: CText(
              "Change",
              style: CFonts.inter(5, 12, primary),
            ),
          ),
        ),
      ],
    );
  }
}
