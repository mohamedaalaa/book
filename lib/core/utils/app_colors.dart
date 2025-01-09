import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF05215B);
  static const Color blueColor = Color(0xFF07427C);
  static const Color buttonColor = Color(0xFFE2E2E2);
  static const Color buttonColor1 = Color(0xFFE6E6E6);
  static Color secondary = HexColor("#0e1623");
  static const Color third = Color.fromARGB(255, 100, 14, 67);
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color grey = Colors.grey;
  static Color greyShade100 = Colors.grey.shade100;
  static Color greyShade300 = Colors.grey.shade300;
  static Color greyShade500 = Colors.grey.shade500;
  static const Color amber = Colors.amber;
  static Color lightGreen = HexColor('#71B24D');
  static Color darkGreen = HexColor('#1CBB50');
  static Color lightPurpel = HexColor("#C4CBE3");
  static Color darkPurple = HexColor("#5C027F");
  static Color lightPink = HexColor("#D6C5DA");
  static Color lightBlue = HexColor("#A4C7D0");
  static const Color lightGrey = Color(0xFF8D8D8D);
  static const Color lightGrey1 = Color(0xFFF1F1F1);
  static const Color deleteColor = Color(0xFFE61414);
  static const Color orderColor = Color(0xFFF9F8F8);
  static const Color borderColor = Color(0xFFDFDFDF);

  static const Color textColor = Color(0xFF49454F);
  static const Color textColor1 = Color(0xFFFA7927);
  static const Color textColor2 = Color(0xFF434343);
  static const Color contColor = Color(0xFFC4E59E);
  static const Color contColor1 = Color(0xFF2EA446);
  static const Color contColor2 = Color(0xFF63AF23);
  static const Color contColor3 = Color(0xFFECF2E7);
  static const Color contColor4 = Color(0xFF79747E);
  static const Color contColor5 = Color(0xFF2D2D2D);
  static const Color contColor6 = Color(0xFFC8C8C8);
  static const Color contColor7 = Color(0xFF0CA411);
  static const Color contColor8 = Color(0xFF1673E1);
  static const Color dividerColor = Color(0xFFCECECE);
  // static Color whiteColor = const Color(0xFF4A668A);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
