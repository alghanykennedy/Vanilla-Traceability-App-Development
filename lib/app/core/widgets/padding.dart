import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CPadding extends StatelessWidget {
  const CPadding({
    super.key,
    required this.padding,
    required this.child,
  });

  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.copyWith(
        top: padding.top.h,
        bottom: padding.bottom.h,
        left: padding.left.w,
        right: padding.right.w,
      ),
      child: child,
    );
  }
}
