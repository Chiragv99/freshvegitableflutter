import 'package:get/get.dart';

import '../../models/vegitablelist_model.dart';
import '../../routes/app_routes.dart';

class VegitableDetailController extends GetxController{

  // get product details from arguments
  VegitableListModel product = Get.arguments;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  redirectToCartScreen(){
    Get.toNamed(Routes.cartscreen);
  }
}