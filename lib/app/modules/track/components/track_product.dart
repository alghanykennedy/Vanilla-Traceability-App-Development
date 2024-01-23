import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vanilla_traceability_app/app/core/theme.dart';
import 'package:vanilla_traceability_app/app/core/widgets/padding.dart';
import 'package:vanilla_traceability_app/app/core/widgets/sizedbox.dart';
import 'package:vanilla_traceability_app/app/core/widgets/text.dart';
import 'package:vanilla_traceability_app/app/modules/track/controllers/track_controller.dart';

import '../../../core/assets.dart';

class TrackProduct extends GetView<TrackController> {
  const TrackProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CSizedBox(
          height: 24,
        ),
        CText(
          "Shipment Detail",
          style: CFonts.inter(6, 14),
        ),
        CPadding(
          padding: const EdgeInsets.only(top: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  imgVaniliBean,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
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
                      "Vanilli Bean",
                      style: CFonts.inter(4, 14),
                      maxLines: 2,
                    ),
                    const CSizedBox(
                      height: 2,
                    ),
                    CSizedBox(
                      height: 34,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CText(
                                      "Quantity: ",
                                      style: CFonts.inter(6, 12),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Material(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4.r),
                                            ),
                                            side: const BorderSide(
                                              color: borderColor,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: controller.decrement,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4.r),
                                            ),
                                            child: const CPadding(
                                              padding: EdgeInsets.all(2),
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: greyText,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CPadding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                          ),
                                          child: Obx(
                                            () => CText(
                                              controller.quantity.value
                                                  .toString(),
                                              style: CFonts.inter(4, 12),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4.r),
                                            ),
                                            side: const BorderSide(
                                              color: borderColor,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: controller.increment,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4.r),
                                            ),
                                            child: const CPadding(
                                              padding: EdgeInsets.all(2),
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: greyText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
