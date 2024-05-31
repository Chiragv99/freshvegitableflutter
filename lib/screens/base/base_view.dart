import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/base/base_controller.dart';
import 'package:onlineshoppingsample/screens/home/homescreen.dart';
import 'package:onlineshoppingsample/uttils/appConstant.dart';

class BaseView extends GetView<BaseController>{
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return
     GetBuilder<BaseController>(builder: (_) =>
         Scaffold(
           resizeToAvoidBottomInset: false,
           body: SafeArea(
             bottom: false,
               child: IndexedStack(
                 index: controller.currentIndex,
                 children: [
                   HomeScreen(),
                   HomeScreen(),
                   Center(),
                   HomeScreen(),
                   HomeScreen(),
                 ],
               )),
         )
   );
  }



  _mBottomNavItem({required String label, required String icon}) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(icon, color: Get.theme.iconTheme.color),
      activeIcon: SvgPicture.asset(icon, color: Get.theme.appBarTheme.iconTheme?.color),
    );
  }
}
