import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_controller.dart';
import 'package:onlineshoppingsample/widget/orderCard.dart';

class CartScreen extends GetView<CartScreenController>{

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
       child: Padding(
         padding: EdgeInsets.symmetric(
           horizontal: ScreenUtil().setSp(12.0),
         ),
         child: Column(
           children: [
             Row(
               children: [
                 Text(
                   'My Cart',
                   style: Theme.of(context).textTheme.headline3!.copyWith(
                     fontWeight: FontWeight.w700,
                   ),
                 ),
                 Spacer(),
                 const Icon(
                   Icons.search,
                   color: kPrimaryGreen,
                 )
               ],
             ),
             SizedBox(
               height: ScreenUtil().setSp(12),
             ),
             Column(
               children: List.generate(
                 3,
                     (index) => Column(
                   children: [
                     index == 0
                         ?  OrderCard() :  OrderCard()
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );
  }
}