// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:book/core/constants/device_size.dart';

import '../../../../core/utils/app_colors.dart';

class CounterIconWidget extends StatelessWidget {
  const CounterIconWidget({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.iconSize,
    this.color,
    this.iconColor,
    this.onTap,
  });
  final IconData icon;
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? color;
  final Color? iconColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? context.height * 48 / deviceHeight,
        height: height ?? context.height * 48 / deviceHeight,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? AppColors.buttonColor1,
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize ?? context.height * 24 / deviceHeight,
            color: iconColor ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}
