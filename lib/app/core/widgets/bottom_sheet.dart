import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme.dart';

class CBottomSheet extends StatelessWidget {
  const CBottomSheet({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: padding?.copyWith(
              top: padding?.top.h,
              bottom: padding?.bottom.h,
              left: padding?.left.w,
              right: padding?.right.w,
            ) ??
            EdgeInsets.symmetric(horizontal: 18.w, vertical: 24.h),
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, -6),
              color: purple10,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
