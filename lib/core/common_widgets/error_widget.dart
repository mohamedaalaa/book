// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:book/core/constants/get_text.dart';
import 'package:book/core/utils/translation_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.message,
  });
  final String? message;

  @override
  Widget build(BuildContext context) {
    return TextBold48(text: message != null ? context.translate(message!) : "");
  }
}
