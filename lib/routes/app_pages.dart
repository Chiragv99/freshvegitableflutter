import 'package:get/get.dart';
import 'package:onlineshoppingsample/routes/app_routes.dart';
import 'package:onlineshoppingsample/screens/landing_screen.dart';
import 'package:onlineshoppingsample/screens/splash/splash_binding.dart';

import '../screens/splash/splash_screen.dart';

class AppPages {
  static List<GetPage> getPages = [
    GetPage(name: Routes.ladingscreen, page: () =>  LandingScreen(),
    binding: SplashBinding())
  ];
}