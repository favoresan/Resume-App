import 'package:flutter/material.dart';

class ColorManager {
  static Color secondary = HexColor.fromHex('#ffc107');
  static Color primary = HexColor.fromHex('#242430');
  static Color darkColor = HexColor.fromHex('#191923');
  static Color bodyTextColor = HexColor.fromHex('#88888d');
  static Color bgColor = HexColor.fromHex('#1e1e28');
  static Color white = HexColor.fromHex('#ffffff');
}

extension HexColor on Color {
  static Color fromHex(String hexcolorString) {
    hexcolorString = hexcolorString.replaceAll('#', '');
    if (hexcolorString.length == 6) {
      hexcolorString = 'FF' + hexcolorString;
    }
    return Color(int.parse(hexcolorString, radix: 16));
  }
}
