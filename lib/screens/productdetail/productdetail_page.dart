import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/productdetail/productdetail_controller.dart';
import 'package:onlineshoppingsample/widget/custom_app_bar.dart';
import 'package:onlineshoppingsample/widget/image_placeholder.dart';

import '../../constants/colors.dart';
import '../../widget/custom_input_button.dart';
import '../../widget/discount_text.dart';
import '../../widget/fruit_title.dart';
import '../../widget/previous_price_tag.dart';
import '../../widget/priceTag.dart';
import '../../widget/quantity_input.dart';

class ProductDetailPage extends GetView<ProductDetailController>{
  final textController = TextEditingController(text: '1');
  ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(child:  Scaffold(
     body:  Column(
       children: [
         Expanded(child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              getActionBar(),
               SizedBox(
                 height: ScreenUtil().setSp(10),
               ),
               SizedBox(
                 height: ScreenUtil().setSp(200),
                 width: double.infinity,
                 child: ImagePlaceHolder(),
               ),
               SizedBox(
                 height: ScreenUtil().setSp(5),
               ),
               Padding(padding: EdgeInsets.symmetric(
                 horizontal: ScreenUtil().setSp(16.0)
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   DiscoutText(),
                   SizedBox(
                     height: ScreenUtil().setSp(8),
                   ),
                   FruitTitle(title: 'Fruit\'s Bundle'),
                   SizedBox(
                     height: ScreenUtil().setSp(8),
                   ),
                   Text(
                     '200gr',
                     style:
                     Theme.of(context).textTheme.headline4!.copyWith(
                       color: kTextColorAccent,
                     ),
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       PreviousPriceTag(),
                       SizedBox(
                         width: ScreenUtil().setSp(8),
                       ),
                       PriceTag(),
                       Spacer(),
                       CustomIconButton(Icons.remove, () {

                       }),
                       SizedBox(
                         width: ScreenUtil().setSp(4),
                       ),
                       QuantityInput(textController: textController),
                       SizedBox(
                         width: ScreenUtil().setSp(4),
                       ),
                       CustomIconButton(Icons.add, () {

                       }),
                     ],
                   )
                 ],
               ),
               )
             ],
           ),
         ))
       ],
     ),
   ));
  }

  Widget getActionBar(){
    return  CustomAppBar(
      'Dragon Fruit',
      [
        SizedBox(
          width: ScreenUtil().setSp(12),
          child: Image.asset(
            'assets/images/cart_nav_fill.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: ScreenUtil().setSp(12),
        ),
        const Icon(
          Icons.share,
          color: kPrimaryGreen,
        ),
        SizedBox(
          width: ScreenUtil().setSp(12),
        ),
      ],
    );
  }
}