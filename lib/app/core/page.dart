import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'assets.dart';
import 'theme.dart';
import 'widgets/bottom_sheet.dart';
import 'widgets/sizedbox.dart';
import 'widgets/svg_picture.dart';
import 'widgets/text.dart';

class CPage extends StatelessWidget {
  const CPage({
    super.key,
    required this.title,
    this.onWillPop,
    this.padding,
    this.children,
    this.loading,
    this.backBtn = false,
    this.defaultActions,
    this.leadingImg,
    this.actions,
    this.bottomSheet,
    this.child,
    this.crossAxisAlignment,
    this.titleIcon,
  });

  final String title;
  final Widget? titleIcon;
  final Future<bool> Function()? onWillPop;
  final bool backBtn;
  final EdgeInsets? padding;
  final List<Widget>? children;
  final Widget? child;
  final bool? loading;
  final bool? defaultActions;
  final String? leadingImg;
  final List<Widget>? actions;
  final Widget? bottomSheet;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final crossAxis = crossAxisAlignment ?? CrossAxisAlignment.stretch;
    final defaultPadding = padding != null
        ? padding!.copyWith(
            top: padding!.top.h,
            bottom: padding!.bottom.h,
            left: padding!.left.h,
            right: padding!.right.h,
          )
        : EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 30.h,
          );

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: kToolbarHeight.h * 1.75,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
                  decoration: const BoxDecoration(
                    color: white,
                    boxShadow: [
                      shadowSmooth,
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: onWillPop ?? Get.back,
                        child: Row(
                          children: [
                            if (onWillPop != null || backBtn) ...[
                              const CSizedBox(
                                height: 34,
                                child: Center(
                                  child: CSvg(
                                    icBackButton,
                                    radius: 20,
                                  ),
                                ),
                              ),
                              const CSizedBox(width: 8),
                            ],
                          ],
                        ),
                      ),
                      CSizedBox(
                        height: 34,
                        child: Center(
                          child: CText(
                            title,
                            style: CFonts.inter(5, 16),
                          ),
                        ),
                      ),
                      if (titleIcon != null) ...[
                        const CSizedBox(width: 4),
                        CSizedBox(
                          height: 34,
                          child: Center(
                            child: titleIcon,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Expanded(
                  child: child != null
                      ? child!
                      : SingleChildScrollView(
                          padding: defaultPadding,
                          child: Column(
                            crossAxisAlignment: crossAxis,
                            children: children ?? [],
                          ),
                        ),
                )
              ],
            ),
            if (bottomSheet != null) CBottomSheet(child: bottomSheet!),
          ],
        ),
      ),
    );
  }
}
