import 'package:flutter/cupertino.dart';

import '../utils/assets_manager.dart';

BoxDecoration mainBackground({String? path, double? circular}) {
  return BoxDecoration(
    // color: AppColors.third,
    image: DecorationImage(
        image: AssetImage(
          path ?? ImageAssets.logo,
        ),
        fit: BoxFit.cover),
  );
}
