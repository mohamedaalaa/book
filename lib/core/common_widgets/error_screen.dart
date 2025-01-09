// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:book/config/routes/app_routes.dart';
import 'package:book/core/common_widgets/app_button.dart';

import 'package:book/core/constants/device_size.dart';
import 'package:book/core/constants/get_padding.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/translation_manager.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    this.message,
    this.onTap,
  });
  final String? message;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: const DefaultAppBar(),
      body: SizedBox(
          width: context.width,
          height: context.height,
          // decoration: mainBackground(),
          child: SizedBox(
            child: Column(
              spacing: getSize(context, 50),
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicWidth(
                  child: Container(
                    width: getSize(context, 696),
                    // height: getSize(context, 323)
                    padding: EdgeInsets.all(getPadding(context)),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(getSize(context, 45))),
                    child: Column(
                      spacing: getSize(context, 30),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: getSize(context, 400),
                              child: TextBold32(
                                  text: message != null
                                      ? context.translate(message!)
                                      : ""),
                            ),
                          ],
                        ),
                        AppButton(
                          onTap: onTap ??
                              () => Navigator.pushNamedAndRemoveUntil(context,
                                  Routes.initialRoute, (route) => false),
                          height: 70,
                          text: context.translate("try_again"),
                          width: 250,
                          color: AppColors.black,
                          textColor: AppColors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
