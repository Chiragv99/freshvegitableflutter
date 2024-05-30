import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_routes.dart';

class ProductDetailController extends GetxController{

  // For Store Data
  GetStorage getStorage;
  ProductDetailController({required this.getStorage});


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void redirectToCart(){
    Get.offAndToNamed(Routes.cartscreen);
  }

}