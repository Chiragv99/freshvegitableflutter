import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/vegitable/vegitablelist_controller.dart';
import 'package:onlineshoppingsample/widget/custom_icon_back_button.dart';
import 'package:onlineshoppingsample/widget/vegitable_list_widget.dart';

import '../../uttils/appConstant.dart';

class VegitableList extends GetView<VegitableListController>{
  const VegitableList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconBackButton(
                onPressed: () => Get.back(),
                backgroundColor: theme.scaffoldBackgroundColor,
                borderColor: theme.dividerColor,
                icon: SvgPicture.asset(
                  AppConstant.backArrowIcon,
                  fit: BoxFit.none,
                  color: theme.appBarTheme.iconTheme?.color,
                ),
              ),
              Text('Vegitable',style: theme.textTheme.headline3!.copyWith(
                fontSize: ScreenUtil().setSp(12)
              )),
              CustomIconBackButton(
                  onPressed: (){},
                  backgroundColor: theme.scaffoldBackgroundColor,
                  borderColor: theme.dividerColor,
                  icon: SvgPicture.asset(
                    AppConstant.searchIcon,
                    fit: BoxFit.none,
                    color: theme.appBarTheme.iconTheme?.color,
                  ))
            ],
          ),
        ),
      ),
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