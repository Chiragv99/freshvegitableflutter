import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlineshoppingsample/screens/productdetail/productdetail_controller.dart';

import '../../uttils/appConstant.dart';

class ProductDetailBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ProductDetailController>(() => ProductDetailController(getStorage:  GetStorage(AppConstant.storageName)));
  }

}