import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class HomeScreenController extends GetxController{


  @override
  void onInit() {
    super.onInit();
  }

  void redirectToCategory(){
    Get.toNamed(Routes.vegitableList);
    //Get.offNamedUntil(Routes.category);
  }
  void redirectToPopularDealScreen(){
    Get.toNamed(Routes.popular);
    //Get.offNamedUntil(Routes.category);
  }

  void redirectToVegetableScreen(){
    Get.toNamed(Routes.vegitable);
  }

  void redirectToSearchScreen(){
    Get.toNamed(Routes.search);
  }

  void redirectToProductDetailScreen(){
    Get.toNamed(Routes.vegitabledetailList);
  }
}