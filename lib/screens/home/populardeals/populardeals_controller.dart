import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class PopularController extends GetxController{

  @override
  void onInit() {
    super.onInit();
  }

  void redirectToCategory(){
    Get.offAndToNamed(Routes.category);
  }
}