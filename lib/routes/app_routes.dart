import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/address/addaddress/addaddress_binding.dart';
import 'package:onlineshoppingsample/screens/address/address_map_binding.dart';
import 'package:onlineshoppingsample/screens/home/homescreen.dart';
import 'package:onlineshoppingsample/screens/home/homescreen_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_page.dart';
import 'package:onlineshoppingsample/screens/splash/splash_binding.dart';
import '../screens/address/addaddress/add_address.dart';
import '../screens/address/address_map.dart';
import '../screens/splash/splash_screen.dart';

class Routes{
  static String ladingscreen = '/';
  static String introduction = '/introduction_page';
  static String mapscreen = '/addressmap';
  static String addAddress = '/addaddress';
  static String homeScreen = '/homescreen';

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
    ),
    GetPage(
        name: '/addaddress',
        page: () => AddAddress(),
        binding: AddAddressBinding()
    ),
    GetPage(
        name: '/homescreen',
        page: () => HomeScreen(),
        binding: HomeScreenBinding()
    )
  ];
}