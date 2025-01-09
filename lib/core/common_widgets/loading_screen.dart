import 'package:flutter/material.dart';
import 'package:book/core/common_widgets/main_background.dart';
import 'package:book/core/constants/device_size.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/utils/app_colors.dart';
import '../constants/get_text.dart';

class LoadingScreen extends StatelessWidget {
  final String? text;
  const LoadingScreen({super.key, this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: const DefaultAppBar(
        //   isBack: false,
        // ),
        body: Container(
      width: context.width,
      height: context.height,
      decoration: mainBackground(),
      child: text == null
          ? const Center(
              child: LoadingImage(),
            )
          : Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: LoadingImage(),
                  ),
                  TextBold40(
                    text: text!,
                    color: AppColors.white,
                  )
                ],
              ),
            ),
    ));
  }
}

class LoadingImage extends StatelessWidget {
  const LoadingImage({
    super.key,
    this.height,
    this.width,
    this.path,
  });
  final double? height;
  final double? width;
  final String? path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path ?? "",
      width: getSize(context, width ?? 100),
      height: getSize(context, height ?? 100),
    );
  }
}
