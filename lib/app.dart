import 'package:flutter/material.dart';
import 'package:resume_app/resume.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Resume(),
    );
  }
}
