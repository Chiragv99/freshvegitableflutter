import 'package:get/get.dart';
import 'populardeals_controller.dart';

class PopularDealsBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<PopularController>(() => PopularController());
  }
}