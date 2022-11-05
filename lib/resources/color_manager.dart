import 'package:flutter/material.dart';

class ColorManager {
  static Color secondaryDark = HexColor.fromHex('#ffc107');
  static Color primaryDark = HexColor.fromHex('#242430');
  static Color darkColor = HexColor.fromHex('#191923');
  static Color bodyTextColor = HexColor.fromHex('#88888d');
  static Color bgColorDark = HexColor.fromHex('#1e1e28');
  static Color bgColorLight = HexColor.fromHex('#f6f6f6');
  static Color white = HexColor.fromHex('#ffffff');
  static Color black = HexColor.fromHex('#000000');
  static Color primaryLight = HexColor.fromHex('#E2E2E2');
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
