
import 'package:app/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_fonts/persian_fonts.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: PersianFonts.vazirTextTheme ),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
