import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/search/searchscreen_controller.dart';

class SearchScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SearchScreenController>(() => SearchScreenController());
  }

}