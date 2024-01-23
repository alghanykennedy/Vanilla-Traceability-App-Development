import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CSizedBox extends StatelessWidget {
  const CSizedBox({
    super.key,
    this.child,
    this.height,
    this.radius,
    this.width,
  });

  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius?.r ?? height?.h,
      width: radius?.r ?? width?.w,
      child: child,
    );
  }
}
