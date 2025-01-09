// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:book/core/common_widgets/main_background.dart';
import 'package:book/core/constants/device_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/assets_manager.dart';
import 'package:book/core/utils/translation_manager.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    super.key,
    this.text,
    this.onTap,
    this.width,
    this.height,
  });
  final String? text;
  final GestureTapCallback? onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      // decoration: mainBackground(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const LogoWidget(),
          const GapHeight(height: 30),
          TextBold48(text: text ?? context.translate(AppStrings.noCylinders)),
          const GapHeight(height: 30),
        ],
      ),
    );
    // );
  }
}
