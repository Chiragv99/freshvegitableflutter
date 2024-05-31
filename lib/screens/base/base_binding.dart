import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/home/homescreen_controller.dart';

import 'base_controller.dart';

class BaseBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }

}