import 'package:flutter/material.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/utils/app_colors.dart';

import '../constants/get_size.dart';

class AppButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;
  final Color textColor;
  final void Function()? onTap;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final double? circular;
  final double? fontSize;
  final Widget? widget;
  final String? path;

  const AppButton({
    super.key,
    required this.height,
    required this.text,
    required this.width,
    required this.color,
    required this.textColor,
    this.fontSize,
    this.widget,
    this.onTap,
    this.fontWeight,
    this.borderColor,
    this.path,
    this.circular,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: getSize(context, width),
          height: getSize(context, height),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor ?? AppColors.white),
              color: color,
              borderRadius:
                  BorderRadius.circular(getSize(context, circular ?? width))),
          child: Center(
            child: Align(
              child: TextBold32(
                text: text,
                color: textColor,
                size: fontSize,
              ),
            ),
          )),
    );
  }
}
