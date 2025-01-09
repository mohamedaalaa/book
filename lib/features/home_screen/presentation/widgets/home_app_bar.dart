import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/translation_manager.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: TextBold18(
        text: context.translate(AppStrings.searchFlights),
        color: AppColors.textColor,
      ),
      centerTitle: false,
      backgroundColor: AppColors.contColor,
      toolbarHeight: getSize(context, 76),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: getSize(context, 48),
          color: AppColors.textColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
