import 'package:flutter/material.dart';
import 'package:onlineshoppingsample/screens/intro_screen.dart';
import 'package:onlineshoppingsample/screens/landing_screen.dart';
import 'package:onlineshoppingsample/screens/login_page.dart';
import 'package:onlineshoppingsample/screens/map_screen.dart';
import 'package:onlineshoppingsample/uttils/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final customTheme = CustomTheme(constraints);
      return MaterialApp(
        title: 'Series',
        theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: customTheme.nunito(),
          elevatedButtonTheme: customTheme.elevatedButtonTheme(),
          outlinedButtonTheme: customTheme.outlinedButtonTheme()
        ),
        home: LandingScreen(),
        routes: {
          IntroScreen.routeName: (ctx) => IntroScreen(),
          LoginPage.routeName: (ctx) => LoginPage(),
          MapScreen.routeName: (ctx) => MapScreen()

        },
      );
    });
  }
}
