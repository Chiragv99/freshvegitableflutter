import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlineshoppingsample/screens/introduction/introduction_controller.dart';

import '../../uttils/appConstant.dart';

class IntroductionBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(() => IntroductionController(getStorage:  GetStorage(AppConstant.storageName)));
  }
}