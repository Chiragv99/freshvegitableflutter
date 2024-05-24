import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_page.dart';
import 'package:onlineshoppingsample/screens/splash/splash_binding.dart';

import '../screens/intro_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes{
  static String ladingscreen = '/';
  static String introduction = '/introduction_page';
  static String mapscreen = '/map_screen';
  static String addAddress = '/add_address';


  static const INITIAL = '/splash';

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => SlashPage(),
      binding: SplashBinding()
    ),
    GetPage(
      name: '/introduction_page',
      page: () => IntroductionPage(),
      binding: IntroductionBinding()
    )
  ];
}