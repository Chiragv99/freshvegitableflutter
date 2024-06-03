import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_controller.dart';
import 'package:onlineshoppingsample/widget/cart_item.dart';
import 'package:onlineshoppingsample/widget/no_data.dart';

import '../../widget/addtocard_widget.dart';
import '../../widget/common_widget.dart';

class CartScreen extends GetView<CartScreenController>{

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: topHearWithSearch(context,"Cart",false),
      body: GetBuilder<CartScreenController>(
        builder: (_) => Column(
          children: [
            24.verticalSpace,
            Expanded(child: controller.products.isEmpty ?  const NoData(text: 'No Data',) :
            ListView.separated(
                itemBuilder: (context,index) => 
                    CartItem(vegitableListModel: controller.products[index],).
                 animate(delay: (100 * index).ms).fade().slideX(
                      duration: 300.ms,
                      begin:  -1,
                      curve: Curves.easeInSine
                    ),
                separatorBuilder: (_,index) => Padding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      bottom: 24.h
                    )), itemCount: controller.products.length),),
            30.verticalSpace,
            Visibility(
              visible: controller.products.isNotEmpty,
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: AddToCardWidget(
                    text: 'Purchase Now',
                    onPressed: () => {

                    },
                    fontSize: 16.sp,
                    radius: 50.r,
                    verticalPadding: 16.h,
                    hasShadow: false,
                  ).animate().fade().slideY(
                      duration: 300.ms,
                      begin: 1,
                      curve: Curves.easeInSine
                  ),
                )),
            10.verticalSpace
          ],
        ),
      )
    );
  }
}