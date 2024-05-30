import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlineshoppingsample/screens/wishList/wishlist_controller.dart';

import '../../uttils/appConstant.dart';

class WishlistBinding  extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(() => WishlistController(getStorage:  GetStorage(AppConstant.storageName)));
  }

}