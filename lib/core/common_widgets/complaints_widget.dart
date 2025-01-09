import 'package:flutter/material.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/translation_manager.dart';

class ComplaintsWidget extends StatelessWidget {
  const ComplaintsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: getSize(context, 470),
      height: getSize(context, 106),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(getSize(context, 10))),
      padding: EdgeInsets.all(getSize(context, 20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.call,
            color: AppColors.blueColor,
            size: getSize(context, 50),
          ),
          TextBold26(
            text: context.translate(AppStrings.toComplaint),
            color: Colors.black,
          ),
          const GapWidth(width: 10),
          const TextBold26(
            text: AppStrings.phoneNumber,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
