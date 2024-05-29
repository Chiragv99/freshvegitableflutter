import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../uttils/appConstant.dart';
import 'cartscreen_controller.dart';

class CartScreenBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<CartScreenController>(() => CartScreenController(getStorage:  GetStorage(AppConstant.storageName)));
  }

}