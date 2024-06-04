import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/orderpage/orderpage_controller.dart';

class OrderPageBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<OrderPageController>(() => OrderPageController());
  }

}