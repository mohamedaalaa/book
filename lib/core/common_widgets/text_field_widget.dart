// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:book/core/constants/get_size.dart';

import '../utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.isEnabled,
    this.isSecure,
    this.textAlign,
    this.errorMaxLines,
    this.suffixIcon,
    this.prefixIcon,
    this.filledColor,
    this.hintText,
    this.hintStyle,
    this.onTap,
    this.initialValue,
    this.enabledBorder,
    this.focusedBorder,
    this.validator,
    this.fontSize,
    this.controller,
    this.keyboardType,
    this.maxLength,
    this.maxLines,
    this.onChanged,
    this.width,
  });
  final bool? isEnabled;
  final bool? isSecure;
  final TextAlign? textAlign;
  final int? errorMaxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? filledColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final void Function()? onTap;
  final String? initialValue;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? Function(String?)? validator;
  final double? fontSize;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final double? width;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getSize(context, width ?? 500),
      child: TextFormField(
          onChanged: onChanged,
          maxLength: maxLength,
          maxLines: maxLines,
          onTap: onTap,
          enabled: isEnabled,
          initialValue: initialValue,
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          obscureText: isSecure ?? false,
          textAlign: textAlign ?? TextAlign.start,
          style: TextStyle(
            // color: AppColors.borderColor,
            fontSize: fontSize ?? getSize(context, 32),
            fontWeight: FontWeight.normal,
          ),
          validator: validator,
          decoration: InputDecoration(
            errorMaxLines: errorMaxLines,
            hintText: hintText,
            hintStyle: hintStyle,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            focusedBorder: focusedBorder,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.blueColor,
                width: 2,
              ),
            ),
            // errorBorder: InputBorder.none,
            // disabledBorder: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.red,
                width: 1.0,
              ),
            ),

            fillColor: filledColor ?? Colors.white,
            filled: true,
          )),
    );
  }
}
