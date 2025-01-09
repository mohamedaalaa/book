import 'package:flutter/material.dart';
import 'package:book/core/constants/device_size.dart';

double getSize(BuildContext context, double value) {
  return (context.width * context.height) /
      (deviceWidth * deviceHeight) *
      value;
}
