import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/home/vegitable/vegitablescreen_controller.dart';

class VegitableScreenBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<VegitableController>(() => VegitableController());
  }

}