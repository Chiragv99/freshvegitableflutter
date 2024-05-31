import 'package:get/get.dart';

import 'vegitablelist_controller.dart';

class VegitableListBindings extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<VegitableListController>(
          () => VegitableListController(),
    );
  }

}