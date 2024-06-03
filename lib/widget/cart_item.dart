import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/vegitablelist_model.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_controller.dart';
import 'package:onlineshoppingsample/widget/vegitablecountwidget.dart';

class CartItem extends GetView<CartScreenController>{
  final VegitableListModel vegitableListModel;

  const CartItem({
    Key? key,
    required this.vegitableListModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(vegitableListModel.image,width: 50.w,height: 40.h,),
        16.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(vegitableListModel.name,style: theme.textTheme.headline5,),
            5.verticalSpace,
            Text( '1kg, ${vegitableListModel.price}\$',
            style: theme.textTheme.headline5?.
              copyWith(
              color: theme.primaryColor
            ),),
          ],
        ),
        Spacer(),
        VegitableCountWidget(product: controller.products[0])
            .animate().fade(duration: 200.ms)
      ],
    ),);
  }
}