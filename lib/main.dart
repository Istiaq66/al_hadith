import 'package:al_hadith/config/app_color.dart';
import 'package:al_hadith/screens/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: primary,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primary),
          )),
      home: const NavigationPage(),
    );
  }
}
