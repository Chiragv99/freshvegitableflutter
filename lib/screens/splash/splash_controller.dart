import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/app_routes.dart';
import '../../uttils/appConstant.dart';

class SplashController extends GetxController {

  // For Store Data
  GetStorage getStorage;

  SplashController({required this.getStorage});

  var keepMeLogin = false;
  @override
  void onInit() {
    super.onInit();
    keepMeLogin = getStorage.read(AppConstant.keepMeLogin) ?? false;
    Future.delayed(const Duration(seconds: 4), () {
    //  Get.offAndToNamed(Routes.ladingscreen);
    });

  }

  redirectToIntroScreen() {
    Get.offAndToNamed(Routes.introduction);
  }
}
