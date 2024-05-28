import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class HomeScreenController extends GetxController{


  @override
  void onInit() {
    super.onInit();
  }

  void redirectToCategory(){
    Get.toNamed(Routes.category);
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
}