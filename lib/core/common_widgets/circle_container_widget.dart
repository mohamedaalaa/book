// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:book/core/constants/get_text.dart';

import '../constants/get_size.dart';

class CircleContainerWidget extends StatelessWidget {
  const CircleContainerWidget({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.color,
    this.textColor,
  });
  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? getSize(context, 50),
      height: height ?? getSize(context, 50),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextBold30(
          text: text,
          color: textColor,
        ),
      ),
    );
  }
}
