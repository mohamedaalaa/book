import 'package:flutter/material.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/utils/app_manager.dart';

double getPadding(BuildContext context) {
  return getSize(context, AppManager.padding);
}

EdgeInsets getNewPadding(BuildContext context) {
  return EdgeInsets.only(
      right: getSize(context, 80),
      left: getSize(context, 80),
      top: getSize(context, 20));
}
