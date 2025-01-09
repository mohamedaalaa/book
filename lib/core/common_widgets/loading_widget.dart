// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:book/core/constants/get_size.dart';
import 'package:book/core/utils/assets_manager.dart';

class LoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const LoadingWidget({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      "AnimationAssets.loading",
      width: getSize(context, width ?? 200),
      height: getSize(context, height ?? 200),
    );
  }
}
