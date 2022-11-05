import 'package:flutter/material.dart';
import 'package:resume_app/resources/styles_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationDarkTheme() {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: ColorManager.primaryDark,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: ColorManager.secondaryDark),
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
      bodySmall: getMediumStyle(
          color: ColorManager.secondaryDark, fontSize: FontSize.s16),
    ),
  );
}

ThemeData getApplicationLightTheme() {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: ColorManager.primaryLight,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: ColorManager.secondaryDark),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayMedium:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s18),
      displayLarge:
          getBoldStyle(color: ColorManager.black, fontSize: FontSize.s22),
      displaySmall: getRegularStyle(
        color: ColorManager.black,
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
      bodySmall: getMediumStyle(
          color: ColorManager.secondaryDark, fontSize: FontSize.s16),
    ),
  );
}
