import 'package:get/get.dart';

import '../../models/vegitablelist_model.dart';
import '../../uttils/dummy_helper.dart';

class OrderPageController extends GetxController{

  // to hold the products in cart
  List<VegitableListModel> products = [];

  @override
  void onInit() {
    super.onInit();
    getCartProduct();
  }

  void getCartProduct() {
    products = DummyHelper.products;
  }
}