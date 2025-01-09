import 'dart:async';

import 'package:flutter/material.dart';
import 'package:book/core/common_widgets/enums.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/constants/get_text.dart';
import 'package:book/core/constants/sizes.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';
import 'package:book/core/utils/assets_manager.dart';
import 'package:book/core/utils/translation_manager.dart';
import 'package:intl/intl.dart';

class AppManager {
  static const double padding = 16;
  static const int countdownTimer = 120;

  static RegExp mailReg = RegExp(AppStrings.mailReg);
  static RegExp phoneReg = RegExp(AppStrings.phoneReg);
  static RegExp passwordReg = RegExp(AppStrings.passwordReg);

  static const String methodName = "SendTestMessage";

  // static const String outputFormat = AppStrings.outputFormat;
  static const String metal = 'Metal';
  static const String fiber = 'Fiber';
  static const String central = 'Central';
  static const String dispenser = 'Dispenser';

  static String get getDateTime {
    DateTime now = DateTime.now();
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    return dateFormat.format(now);
  }

  static String getDateTimeForBackend() {
    DateTime now = DateTime.now();
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    return dateFormat.format(now);
  }

  static Future<void> showEmptyDialoug(
      BuildContext context, String name, int id,
      {String? message, int? value}) async {
    await showDialog(
      context: context,
      builder: (context) => Theme(
        data: Theme.of(context).copyWith(
            dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getSize(context, 15))),
        )),
        child: AlertDialog(
          backgroundColor: Colors.white,
          shadowColor: AppColors.greyShade500,
          content: SizedBox(
            height: getSize(context, 273),
            // width: getSize(context, 696),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // width: getSize(context, 500),
                      child: TextBold36(
                        text: name,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      width: getSize(context, 500),
                      child: TextBold20(
                        text: context.translate(
                          AppStrings.productNotAvlble,
                        ),
                        color: AppColors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: getSize(context, 186),
                        height: getSize(context, 72),
                        decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: TextNormal24(
                            text: context.translate(AppStrings.ourProducts),
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: getSize(context, 300),
                  child: Stack(alignment: Alignment.center, children: [
                    // Image.asset(
                    //   ImageAssets.outofstock,
                    //   width: getSize(context, 337),
                    //   height: getSize(context, 183),
                    // ),
                    // Image.asset(
                    //   getRequestImage(id),
                    //   width: getSize(context, 150),
                    //   height: getSize(context, 150),
                    //   fit: BoxFit.contain,
                    // ),
                  ]),
                )
                // TextBold48(text: context.translate(message!)),
                // const GapHeight(height: 50),
                // InkWell(
                //   onTap: () => Navigator.pop(context),
                //   child: Container(
                //     width: getSize(context, 300),
                //     height: getSize(context, 100),
                //     decoration: BoxDecoration(
                //       color: AppColors.primary,
                //       borderRadius: BorderRadius.circular(getSize(context, 5)),
                //     ),
                //     child: Center(
                //         child: TextBold35(
                //       text: context.translate(AppStrings.ok),
                //       color: AppColors.white,
                //     )),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
