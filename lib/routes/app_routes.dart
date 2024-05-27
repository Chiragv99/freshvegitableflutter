import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/address/address_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_page.dart';
import 'package:onlineshoppingsample/screens/splash/splash_binding.dart';
import '../screens/address/address_map.dart';
import '../screens/splash/splash_screen.dart';

class Routes{
  static String ladingscreen = '/';
  static String introduction = '/introduction_page';
  static String mapscreen = '/addressmap';
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
    ),
    GetPage(
        name: '/addressmap',
        page: () => AddressMap(),
        binding: AddressBinding()
    )
  ];
}