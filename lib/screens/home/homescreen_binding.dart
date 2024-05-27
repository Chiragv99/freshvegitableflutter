import 'package:get/get.dart';
import 'homescreen_controller.dart';

class HomeScreenBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }

}