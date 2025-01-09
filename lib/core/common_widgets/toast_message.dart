import 'package:flutter/material.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/translation_manager.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToastMessage(
    BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: AppColors.blueColor,
      content: Center(
        child: TextBold32(
          text: context.translate(text),
          color: AppColors.white,
        ),
      )));
}
