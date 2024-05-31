import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/detail/vegitabledetail_controller.dart';
import 'package:onlineshoppingsample/uttils/dummy_helper.dart';
import 'package:onlineshoppingsample/widget/custom_icon_back_button.dart';
import 'package:onlineshoppingsample/widget/vegitablecountwidget.dart';

import '../../uttils/appConstant.dart';
import '../../widget/addtocard_widget.dart';
import '../../widget/custom_card.dart';

class VegitableDetailScreen extends GetView<VegitableDetailController>{
  const VegitableDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 330.h,
              child: Stack(
                children: [
                  Positioned.fill(child: SvgPicture.asset(
                    AppConstant.container,
                    fit: BoxFit.fill,
                    color: theme.cardColor,
                  ),
                  ),
                  Positioned(
                    top:  24.h,
                      left: 24.w,
                      right: 24.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconBackButton(onPressed: () => Get.back(),
                              icon: SvgPicture.asset(
                                AppConstant.backArrowIcon,
                                fit: BoxFit.none,
                                color: theme.appBarTheme.iconTheme?.color,
                              )),
                          CustomIconBackButton(onPressed: (){},
                              icon: SvgPicture.asset(
                                  AppConstant.searchIcon,
                                  fit: BoxFit.none,
                              color: theme.appBarTheme.iconTheme?.color,))
                        ],
                      )),
                     Positioned(
                         top:  80.h,
                         left: 0,
                         right: 0,
                         child: Image.asset(
                           controller.product.image,
                           width: 250.w,
                           height: 225.h,
                         ).animate().fade().scale(
                           duration: 800.ms,
                           curve: Curves.fastOutSlowIn
                         ))
                ],
              ),
            ),
            30.verticalSpace,
            Padding(padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Text(controller.product.name,
                style: theme.textTheme.headline3!.copyWith(
                  fontSize: 12.w
                ))
                .animate().fade().slideX(
                  duration: 300.ms,
                  begin: -1,
                  curve: Curves.easeInSine
                ),
                Spacer(),
               VegitableCountWidget(product: controller.product)
                .animate().fade(duration: 200.ms)
              ],
            ),),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                '1kg, ${controller.product.price}\$',
                style: theme.textTheme.headline3?.copyWith(
                  color: theme.primaryColor,
                ),
              ).animate().fade().slideX(
                duration: 300.ms,
                begin: -1,
                curve: Curves.easeInSine,
              ),
            ),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                controller.product.description,
                style: theme.textTheme.bodyText1,
              ).animate().fade().slideX(
                duration: 300.ms,
                begin: -1,
                curve: Curves.easeInSine,
              ),
            ),
            20.verticalSpace,
            Padding(padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: GridView(
              shrinkWrap: true,
              primary: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                mainAxisExtent: 80.h
              ),
              children: DummyHelper.cards.map((card) => CustomCard(
                title: card['title']!,
                subtitle: card['subtitle']!,
                icon: card['icon']!,
              )).toList().animate().fade().slideY(
                duration: 300.ms,
                begin: 1,
                curve: Curves.easeInSine
              ),
            ),),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AddToCardWidget(
              text: 'Add to Cart',
              onPressed: () => {},
              fontSize: 16.sp,
              radius: 50.r,
              verticalPadding: 16.h,
              hasShadow: false,
            ).animate().fade().slideY(
              duration: 300.ms,
              begin: 1,
              curve: Curves.easeInSine
            ),),
            30.verticalSpace
          ],
        ),
      ),
    );
  }

}