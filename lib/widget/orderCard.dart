import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_controller.dart';
import 'package:onlineshoppingsample/widget/card_input.dart';

import '../uttils/screen_utils.dart';
import 'custom_input_button.dart';

class OrderCard extends GetView<CartScreenController>{

  final bool ? isSelected;


  OrderCard({Key? key,
    this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: '1');
   return Container(
     height: getProportionateScreenHeight(100),
     decoration: ShapeDecoration(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(
           getProportionateScreenWidth(8.0),
         ),
       ),
       color: isSelected! ? Colors.white : Colors.transparent,
       shadows: isSelected!
           ? [
         BoxShadow(
           color: kShadowColor,
           offset: Offset(
             getProportionateScreenWidth(24),
             getProportionateScreenWidth(40),
           ),
           blurRadius: 80,
         )
       ] : [],
     ),
     padding: EdgeInsets.all(
       getProportionateScreenWidth(4.0),
     ),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Container(
           width: getProportionateScreenWidth(80),
           decoration: ShapeDecoration(
             color: kGreyShade5,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(
                 getProportionateScreenWidth(8.0),
               ),
             ),
           ),
         ),
         SizedBox(
           width: getProportionateScreenWidth(8),
         ),
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Dragon Fruit',
                 style: Theme.of(context).textTheme.headline4!.copyWith(
                   fontWeight: FontWeight.w700,
                 ),
               ),
               Text(
                 '200gr',
                 style: TextStyle(
                   color: kTextColorAccent,
                   fontSize: getProportionateScreenWidth(
                     12,
                   ),
                 ),
               ),
               Row(
                 children: [
                   Text(
                     '\$45',
                     style: TextStyle(
                       fontSize: getProportionateScreenWidth(20),
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                   Spacer(),
                   CustomIconButton(
                     Icons.remove,
                         () {
                     },
                     size: 32,
                   ),
                   SizedBox(
                     width: getProportionateScreenWidth(4),
                   ),
                   CardInput(
                     textController: textController,
                   ),
                   SizedBox(
                     width: getProportionateScreenWidth(4),
                   ),
                   CustomIconButton(
                     Icons.add,
                         () {
                     },
                     size: 32,
                   ),
                 ],
               )
             ],
           ),
         )
       ],
     ),
   );
  }
}