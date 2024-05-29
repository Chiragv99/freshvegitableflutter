import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

class ReviewCard extends StatelessWidget{
  const ReviewCard({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(padding: EdgeInsets.only(
     bottom: ScreenUtil().setSp(8.0)
   ),
     child: Row(
       children: [
         Expanded(child: Column(
           children: [
             CircleAvatar(
               backgroundColor: kGreyShade5,
               radius: ScreenUtil().setSp(12),
             ),
             SizedBox(
               width: ScreenUtil().setSp(4),
             ),
             UserDetails(),
           ],
         ),),
         Text( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',  style: Theme.of(context).textTheme.headline4!.copyWith(
           color: kTextColorAccent,
         ),)
       ],
     ),
   );
  }
}

class UserDetails extends StatelessWidget{
  const UserDetails({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
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
          ],
        )
      ],
    ));
  }
  
}