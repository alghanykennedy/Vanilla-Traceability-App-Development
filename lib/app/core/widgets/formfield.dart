import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_traceability_app/app/core/extentions.dart';

import '../theme.dart';
import 'sizedbox.dart';
import 'svg_picture.dart';
import 'text.dart';

class CFormField extends StatefulWidget {
  const CFormField({
    super.key,
    required this.controller,
    this.onTap,
    this.validator,
    this.labelIcon,
    this.labelText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.textAlign,
    this.enabled,
    this.borderRadius,
    this.style,
    this.maxLines,
    this.readOnly,
    this.borderColor,
    this.focusedColor,
    this.isCurrency = false,
    this.autoFocus = false,
    this.maxLength,
    this.onChanged,
  });

  final TextEditingController controller;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final String? labelIcon;
  final String? labelText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextAlign? textAlign;
  final bool? enabled;
  final double? borderRadius;
  final TextStyle? style;
  final int? maxLines;
  final bool? readOnly;
  final Color? borderColor;
  final Color? focusedColor;
  final bool isCurrency;
  final bool autoFocus;
  final int? maxLength;
  final void Function(String)? onChanged;

  @override
  State<CFormField> createState() => _CFormFieldState();
}

class _CFormFieldState extends State<CFormField> {
  late bool _obscure;
  late FocusNode _focusNode;

  @override
  void initState() {
    _obscure = widget.keyboardType == TextInputType.visiblePassword;
    _focusNode = FocusNode();
    if (widget.isCurrency) {
      _focusNode.addListener(() {
        setState(() {});
      });
    }

    if (widget.autoFocus) _focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.removeListener(() {});
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    if (widget.isCurrency) {
      String input = value;

      input = input.decodeCurrency;

      if (input.isNotEmpty) {
        input = input.encodeCurrency;

        widget.controller.value = TextEditingValue(
          text: input,
          selection: TextSelection.collapsed(offset: input.length),
        );
      } else {
        widget.controller.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      onTap: widget.onTap,
      onChanged: widget.onChanged ?? (widget.isCurrency ? _onChanged : null),
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: _obscure,
      textAlign: widget.textAlign ?? TextAlign.start,
      enabled: widget.enabled,
      style: widget.style,
      maxLines: widget.maxLines ?? 1,
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      readOnly: widget.readOnly ?? false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: CFonts.inter(4, 12, greyHint),
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                icon: Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  color: _focusNode.hasFocus ? primary : grey,
                ),
              )
            : widget.suffixIcon,
        label: widget.labelText != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.labelIcon != null) ...[
                    CSvg(
                      widget.labelIcon!,
                      color: _focusNode.hasFocus ? primary : grey,
                      radius: 24,
                    ),
                    const CSizedBox(width: 4),
                  ],
                  CText(
                    widget.labelText!,
                    style: CFonts.inter(4, _focusNode.hasFocus ? 20 : 14,
                        _focusNode.hasFocus ? primary : grey),
                  ),
                ],
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.focusedColor ?? primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? borderColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius?.r ?? 12.r),
          ),
        ),
      ),
    );
  }
}
