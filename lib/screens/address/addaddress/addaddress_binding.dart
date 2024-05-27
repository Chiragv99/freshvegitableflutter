import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlineshoppingsample/screens/address/addaddress/addaddress_controller.dart';

import '../../../uttils/appConstant.dart';

class AddAddressBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<AddAddressController>(() => AddAddressController(getStorage:  GetStorage(AppConstant.storageName)));
  }

}