import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/productdetail/productdetail_controller.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import 'package:onlineshoppingsample/widget/custom_app_bar.dart';
import '../../constants/colors.dart';
import '../../widget/custom_input_button.dart';
import '../../widget/discount_text.dart';
import '../../widget/fruit_title.dart';
import '../../widget/previous_price_tag.dart';
import '../../widget/priceTag.dart';
import '../../widget/quantity_input.dart';

class ProductDetailPage extends GetView<ProductDetailController>{
  final textController = TextEditingController(text: '1');
  bool isReviewTab = false;
  final PageController _controller = PageController();

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
                 height: 300,
                 child: PageView(
                   controller: _controller,
                   onPageChanged: (pageNum) {
                   },
                   children: [
                     pageViewImage('assets/images/banner3.jpeg'),
                     pageViewImage('assets/images/banner7.jpeg'),
                     pageViewImage('assets/images/banner8.png'),
                   ],
                 ),
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
                     height: ScreenUtil().setSp(5),
                   ),
                   Text(
                     '200gr',
                     style:
                     Theme.of(context).textTheme.headline4!.copyWith(
                       color: kTextColorAccent,
                       fontSize: ScreenUtil().setSp(8)
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
                   ),
                   SizedBox(
                     height: ScreenUtil().setSp(8.0),
                   ),
                   Container(
                     height:  ScreenUtil().setSp(
                       32,
                     ),
                     padding: EdgeInsets.symmetric(
                       vertical:  ScreenUtil().setSp(2),
                       horizontal:  ScreenUtil().setSp(4),
                     ),
                     decoration: ShapeDecoration(
                       color: kFillColorThird,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(
                           ScreenUtil().setSp(8.0),
                         ),
                       ),
                     ),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: [
                         Expanded(
                           child: GestureDetector(
                             onTap: () {
                               if (!isReviewTab) {
                                 return;
                               }
                             },
                             child: DetailSelection(
                               'Detail Items',
                               !isReviewTab,
                             ),
                           ),
                         ),
                         VerticalDivider(
                           endIndent: getProportionateScreenHeight(4),
                           indent: getProportionateScreenHeight(4),
                         ),
                         Expanded(
                           child: GestureDetector(
                             onTap: () {
                               if (isReviewTab) {
                                 return;
                               }
                             },
                             child: DetailSelection(
                               'Reviews',
                               isReviewTab,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
               ),
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
        GestureDetector(
          onTap: (){
          controller.redirectToCart();
          },
          child: SizedBox(
            width: ScreenUtil().setSp(12),
            child: Image.asset(
              'assets/images/cart_nav_fill.png',
              fit: BoxFit.cover,
            ),
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
class DetailSelection extends StatelessWidget{
  final String text;
  final bool isSelected;

  const DetailSelection(this.text, this.isSelected);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      decoration: isSelected
          ? ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setSp(12)
            ),
          ),
          shadows: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 3),
              blurRadius: 8,
            )
          ])
          : null,
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
Widget pageViewImage(String imagePath){
  return  Image.asset(
    imagePath,
    fit: BoxFit.fitWidth,
  );
}

class UserDetails extends StatelessWidget{
  const UserDetails({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Expanded(
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Shoo Thar Mien',
                 style: TextStyle(
                   fontSize: getProportionateScreenWidth(17.0),
                   fontWeight: FontWeight.w700,
                 ),
               ),
               Icon(Icons.more_vert_rounded),
             ],
           ),
           Row(
             children: [
               Image.asset(
                 'assets/images/star_rating.png',
               ),
               SizedBox(
                 width: ScreenUtil().setSp(2),
               ),
               Image.asset('assets/images/star_rating.png'),
               SizedBox(
                 width: ScreenUtil().setSp(2),
               ),
               Image.asset(
                 'assets/images/star_rating.png',
               ),
               SizedBox(
                 width: getProportionateScreenWidth(4),
               ),
               Image.asset(
                 'assets/images/star_rating.png',
               ),
               SizedBox(
                 width: getProportionateScreenWidth(4),
               ),
               Image.asset(
                 'assets/images/star_rating.png',
               ),
               const Text(
                 '29 February, 2099',
                 style: TextStyle(
                   color: kTextColorAccent,
                 ),
               ),
             ],
           )
         ],
       ));
  }
  
  
}