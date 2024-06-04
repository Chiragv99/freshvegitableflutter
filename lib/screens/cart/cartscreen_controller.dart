import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlineshoppingsample/models/vegitablelist_model.dart';
import 'package:onlineshoppingsample/uttils/dummy_helper.dart';

import '../../models/vegitable_model.dart';
import '../../routes/app_routes.dart';

class CartScreenController extends GetxController{

  // to hold the products in cart
  List<VegitableListModel> products = [];


  // For Store Data
  GetStorage getStorage;
  CartScreenController({required this.getStorage});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCartProduct();
  }

  void getCartProduct() {
    products = DummyHelper.products;
  }

  void redirectToOrderScreen(){
    Get.toNamed(Routes.orderscreen);
  }
}