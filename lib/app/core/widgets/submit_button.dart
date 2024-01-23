import 'package:flutter/material.dart';

import '../theme.dart';
import 'padding.dart';
import 'sizedbox.dart';
import 'svg_picture.dart';
import 'text.dart';

class CSubmitButton extends StatelessWidget {
  const CSubmitButton({
    super.key,
    required this.onTap,
    required this.action,
    this.borderRadius,
    this.padding,
    this.actionStyle,
    this.outlined = false,
    this.enabled = true,
    this.large = false,
    this.prefixIcon,
    this.color,
  });

  final Function() onTap;
  final String action;
  final bool outlined;
  final double? borderRadius;
  final EdgeInsets? padding;
  final TextStyle? actionStyle;
  final bool enabled;
  final bool large;
  final String? prefixIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final Color defaultColor = color ?? purple;

    return Material(
      color: enabled
          ? outlined
              ? white
              : defaultColor
          : grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        side: enabled && outlined
            ? BorderSide(
                width: 1,
                color: defaultColor,
              )
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: CPadding(
          padding: padding ??
              EdgeInsets.symmetric(vertical: large ? 12 : 8, horizontal: 12),
          child: Center(
            child: CSizedBox(
              height: 24,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[
                      CSvg(
                        prefixIcon!,
                        radius: 14,
                        color: outlined ? purple : white,
                      ),
                      const CSizedBox(width: 6),
                    ],
                    CText(
                      action,
                      color: outlined
                          ? defaultColor
                          : Theme.of(context).scaffoldBackgroundColor,
                      style: actionStyle ??
                          (large
                              ? CFonts.dmSans(7, 16)
                              : const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
