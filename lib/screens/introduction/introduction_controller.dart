import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class IntroductionController extends GetxController {

  // For Store Data
  GetStorage getStorage;
  final PageController _controller = PageController();

  IntroductionController({required this.getStorage});

  int pageCount = 0;

  @override
  void onInit() {
    super.onInit();

  }

  setPageCount(int aPageCount) {
    pageCount = aPageCount;
  }
}
