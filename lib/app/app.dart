import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/app/app_pref.dart';
import 'package:resume_app/resources/theme_manager.dart';
import 'package:resume_app/screen/resume.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = AppPreferences();

  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: getApplicationDarkTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: getApplicationLightTheme(),
      themeMode: ThemeMode.system,
      home: Resume(),
    );
  }
}
