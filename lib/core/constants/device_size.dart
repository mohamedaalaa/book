import 'package:flutter/material.dart';

extension DeviceSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

const deviceWidth = 476;
const deviceHeight = 1024;
