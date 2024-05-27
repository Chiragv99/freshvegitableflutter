import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_routes.dart';
import '../../../uttils/appConstant.dart';

class AddAddressController extends GetxController{

  // For Store Data
  GetStorage getStorage;

  AddAddressController({required this.getStorage});

  var keepMeLogin = false;


  @override
  void onInit() {
    super.onInit();
    keepMeLogin = getStorage.read(AppConstant.keepMeLogin) ?? false;
  }

  redirectToHomeScreen() {
    Get.offAndToNamed(Routes.homeScreen);
  }
}