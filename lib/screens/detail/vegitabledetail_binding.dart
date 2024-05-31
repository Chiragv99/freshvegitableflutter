import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/detail/vegitabledetail_controller.dart';

class VegitableDetailBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<VegitableDetailController>(() => VegitableDetailController());
  }

}