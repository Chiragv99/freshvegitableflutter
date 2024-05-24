import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_routes.dart';

class IntroductionController extends GetxController {

  // For Store Data
  GetStorage getStorage;
  final PageController _controller = PageController();

  IntroductionController({required this.getStorage});

  RxInt pageCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  setPageCount(int aPageCount) {
    pageCount.value = aPageCount;
  }

  redirectToNextPage(){
    Get.offAndToNamed(Routes.mapscreen);
  }

}
