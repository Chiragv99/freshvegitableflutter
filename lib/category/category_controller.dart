import 'package:get/get.dart';
import '../routes/app_routes.dart';

class CategoryController extends GetxController{



  @override
  void onInit() {
    super.onInit();
  }

  redirectToHomeScreen() {
    Get.offAndToNamed(Routes.homeScreen);
  }
}