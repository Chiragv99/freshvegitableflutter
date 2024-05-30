import 'package:get/get.dart';
import 'package:onlineshoppingsample/category/category_binding.dart';
import 'package:onlineshoppingsample/category/category_screen.dart';
import 'package:onlineshoppingsample/screens/address/addaddress/addaddress_binding.dart';
import 'package:onlineshoppingsample/screens/address/address_map_binding.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_binding.dart';
import 'package:onlineshoppingsample/screens/home/homescreen.dart';
import 'package:onlineshoppingsample/screens/home/homescreen_binding.dart';
import 'package:onlineshoppingsample/screens/home/populardeals/populardeals_binding.dart';
import 'package:onlineshoppingsample/screens/home/vegitable/vegitablescreen_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_binding.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_page.dart';
import 'package:onlineshoppingsample/screens/productdetail/productdetail_binding.dart';
import 'package:onlineshoppingsample/screens/search/searchscreen_binding.dart';
import 'package:onlineshoppingsample/screens/splash/splash_binding.dart';
import '../screens/address/addaddress/add_address.dart';
import '../screens/address/address_map.dart';
import '../screens/home/populardeals/populardealsscreen.dart';
import '../screens/home/vegitable/vegitablescreen.dart';
import '../screens/productdetail/productdetail_page.dart';
import '../screens/search/searchscreen.dart';
import '../screens/splash/splash_screen.dart';

class Routes{
  static String ladingscreen = '/';
  static String introduction = '/introduction_page';
  static String mapscreen = '/addressmap';
  static String addAddress = '/addaddress';
  static String homeScreen = '/homescreen';
  static String category = '/categoryscreen';
  static String vegitable = '/vegitablescreen';
  static String search = '/searchscreen';
  static String popular = '/populardealscreen';
  static String productdetail = '/productdetailpage';
  static String cartscreen = '/cartscreen';

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
    ),
    GetPage(
        name: '/categoryscreen',
        page: () => CategoryScreen(),
        binding: CategoryBinding()
    ),
    GetPage(
        name: '/vegitablescreen',
        page: () => vegitableScreen(),
        binding: VegitableScreenBinding()
    ),
    GetPage(
        name: '/searchscreen',
        page: () => SearchScreen(),
        binding: SearchScreenBinding()
    ),
    GetPage(
        name: '/populardealscreen',
        page: () => PopularDealScreen(),
        binding: PopularDealsBinding()
    ),
    GetPage(
        name: productdetail,
        page: () => ProductDetailPage(),
        binding: ProductDetailBinding()
    ),
    GetPage(
        name: cartscreen,
        page: () => CartScreen(),
        binding: CartScreenBinding()
    )
  ];
}