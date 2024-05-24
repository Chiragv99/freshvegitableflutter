import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../uttils/appConstant.dart';
import 'addres_contorller.dart';

class AddressBinding extends  Bindings{

  @override
  void dependencies() {
    Get.lazyPut<AddressController>(() => AddressController(getStorage:  GetStorage(AppConstant.storageName)));
  }

}