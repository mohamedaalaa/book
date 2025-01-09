import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

BoxDecoration boxDecoration() {
  return BoxDecoration(
      border: Border.all(width: 3, color: AppColors.blueColor),
      borderRadius: BorderRadius.circular(20));
}
