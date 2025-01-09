import 'package:flutter/material.dart';
import 'package:book/core/constants/get_size.dart';
import 'package:book/core/utils/app_colors.dart';
import 'package:book/core/utils/app_strings.dart';

class TextBold60 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold60({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 60),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal60 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal60({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 60),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold56 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold56({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 56),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal56 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal56({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 56),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold48 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold48({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 48),
          fontWeight: FontWeight.bold,
          color: color ?? AppColors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal48 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal48({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 48),
          fontWeight: FontWeight.normal,
          color: color ?? AppColors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold40 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold40({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 40),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal40 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal40({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 40),
        fontWeight: FontWeight.normal,
        color: color ?? Colors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextBold36 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  const TextBold36({super.key, required this.text, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 36),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextBold35 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  const TextBold35({super.key, required this.text, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 35),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextNormal35 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal35({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 35),
          fontWeight: FontWeight.normal,
          color: color ?? AppColors.blueColor,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold32 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;

  const TextBold32({
    super.key,
    required this.text,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, size ?? 32),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextBold34 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;

  const TextBold34({
    super.key,
    required this.text,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, size ?? 34),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextNormal32 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal32({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 32),
          fontWeight: FontWeight.normal,
          color: color ?? AppColors.blueColor,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold30 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold30({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 30),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextNormal30 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal30({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 30),
        fontWeight: FontWeight.normal,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextBold28 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold28({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: getSize(context, 28),
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.black,
        fontFamily: AppStrings.fontFamily,
      ),
    );
  }
}

class TextNormal28 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal28({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 28),
          fontWeight: FontWeight.normal,
          color: color ?? AppColors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal25 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal25({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 25),
          fontWeight: FontWeight.normal,
          color: color ?? AppColors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal26 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal26({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 26),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold26 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold26({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 26),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold20 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const TextBold20(
      {super.key,
      required this.text,
      this.color,
      this.overflow,
      this.textAlign,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      text,
      textAlign: textAlign,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 20),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold24 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const TextBold24(
      {super.key,
      required this.text,
      this.color,
      this.overflow,
      this.textAlign,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      text,
      textAlign: textAlign,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 24),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold22 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLines;

  const TextBold22(
      {super.key,
      required this.text,
      this.color,
      this.overflow,
      this.textAlign,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      text,
      textAlign: textAlign,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 22),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal24 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal24({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 24),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal22 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal22({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 22),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal20 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal20({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 20),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal18 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal18({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 18),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold17 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold17({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 17),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold18 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold18({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 18),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold19 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold19({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 19),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal17 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal17({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 17),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold16 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold16({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 16),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal16 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal16({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 16),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold15 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold15({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 15),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal15 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal15({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 15),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold14 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold14({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 14),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal14 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal14({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 14),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold13 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold13({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 13),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold12 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold12({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 12),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextBold9 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextBold9({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 9),
          fontWeight: FontWeight.bold,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

class TextNormal13 extends StatelessWidget {
  final String text;
  final Color? color;

  const TextNormal13({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: getSize(context, 13),
          fontWeight: FontWeight.normal,
          color: color ?? Colors.black,
          fontFamily: AppStrings.fontFamily),
    );
  }
}

/**  headline1: TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.white),
    overline: TextStyle(
    fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
    subtitle1: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.normal,
    color: AppColors.black),
    headline2: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.black),
    bodyText2: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    ),
    subtitle2: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
    headline3: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    caption: const TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
    headline4: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    ),
    button: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    ),
    headline5: const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    ),
    headline6: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.fontColor),
    ), */
