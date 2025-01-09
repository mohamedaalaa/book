import 'package:flutter/material.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/translation_manager.dart';

class BackWidget extends StatelessWidget {
  final Widget? widget;
  const BackWidget({
    super.key,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        width: getSize(context, 696),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: getSize(context, 5),
              children: [
                TextNormal25(
                  text: "<< ${context.translate(AppStrings.back)}",
                  color: AppColors.white,
                ),
              ],
            ),
            widget ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
