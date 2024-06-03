import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/vegitable/vegitablelist_controller.dart';
import 'package:onlineshoppingsample/widget/common_widget.dart';
import 'package:onlineshoppingsample/widget/vegitable_list_widget.dart';

class VegitableList extends GetView<VegitableListController>{
  const VegitableList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: topHearWithSearch(context, "Vegetable List",true),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              mainAxisExtent: 230.h,
            ),
            shrinkWrap: true,
            primary: false,
            itemCount:  controller.products.length,
            itemBuilder: (context,index) =>  VegitableListWidget(vegitableList: controller.products[index])
      ),
    ));
  }
}