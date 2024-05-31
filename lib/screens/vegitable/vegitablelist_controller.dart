import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/vegitablelist_model.dart';

import '../../uttils/dummy_helper.dart';

class VegitableListController extends GetxController{

  // to hold the products
  List<VegitableListModel> products = [];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProducts();
  }

  /// get products from dummy helper
  getProducts() {
    products.addAll(DummyHelper.products);
    products.removeWhere((p) => p?.id == 2);
  }
}