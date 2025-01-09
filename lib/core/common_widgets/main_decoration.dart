import 'package:flutter/material.dart';

import '../utils/assets_manager.dart';

BoxDecoration mainDecoration({Color? color}) {
  return const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(ImageAssets.logo), fit: BoxFit.cover));
}

const splashBoxDecoration = BoxDecoration(
    // color: AppColors.third,
    // image: DecorationImage(
    //   // image: AssetImage(
    //   //   ImageAssets.natDay,
    //   // ),
    //   fit: BoxFit.cover,
    // ),
    );
