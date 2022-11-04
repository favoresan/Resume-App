import 'package:flutter/material.dart';
import 'package:resume_app/resources/styles_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationDarkTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: ColorManager.primary,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.secondary),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayMedium:
          getSemiBoldStyle(color: ColorManager.white, fontSize: FontSize.s18),
      displayLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s22),
      displaySmall: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s17,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.bodyTextColor,
        fontSize: FontSize.s17,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.bodyTextColor,
        fontSize: FontSize.s15,
      ),
      titleLarge: getSemiBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s18,
      ),
      bodyLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s27),
      bodySmall:
          getMediumStyle(color: ColorManager.secondary, fontSize: FontSize.s16),
    ),
  );
}

ThemeData getApplicationLightTheme() {
  return ThemeData.light().copyWith(
    primaryColor: ColorManager.primary,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.secondary),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayMedium:
          getSemiBoldStyle(color: ColorManager.white, fontSize: FontSize.s18),
      displayLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s22),
      displaySmall: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s17,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.bodyTextColor,
        fontSize: FontSize.s17,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.bodyTextColor,
        fontSize: FontSize.s15,
      ),
      titleLarge: getSemiBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s18,
      ),
      bodyLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s27),
      bodySmall:
          getMediumStyle(color: ColorManager.secondary, fontSize: FontSize.s16),
    ),
  );
}
