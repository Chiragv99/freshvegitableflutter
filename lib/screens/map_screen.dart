import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import 'package:onlineshoppingsample/widget/back_button_Is.dart';

import '../uttils/theme_color.dart';
import '../widget/common_widget.dart';
import '../widget/custom_text_field.dart';
import '../widget/round_button.dart';

class MapScreen extends StatelessWidget{
  static const routeName = '/map_screen';

  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonLS(),
                  Text('Choose Your Address',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(14),
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(
                    width: ScreenUtil().setSp(32),
                  )
                ],
              ),
              Expanded(child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset('assets/images/map_pattern.png',
                    fit:BoxFit.fill,),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      child:
                      Image.asset('assets/images/curLoc.png',)),
                  BottomMapCard(),
                ],
              ))
            ],
          )
      ),
    );
  }
}

class BottomMapCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return  Align(
     alignment: Alignment.bottomCenter,
     child: SizedBox(
       child:  Column(
         mainAxisSize:  MainAxisSize.min,
         crossAxisAlignment:  CrossAxisAlignment.end,
         children: [
           Padding(padding: EdgeInsets.symmetric(
             horizontal:  ScreenUtil().setSp(20),
           ),
           child: SizedBox(
             width: ScreenUtil().setSp(30),
             height: ScreenUtil().setSp(30),
             child: FloatingActionButton(
               onPressed: () {},
               backgroundColor: kPrimaryGreen,
               child: Icon(
                 Icons.gps_fixed,
                 size: ScreenUtil().setSp(20),
               ),
             ),
           ),),
           SizedBox(
             height:ScreenUtil().setSp(10),
           ),
           Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(
                   ScreenUtil().setSp(8),
                 ),
                 topRight: Radius.circular(
                     ScreenUtil().setSp(8)
                 )
               )
             ),
             child: Padding(
               padding: EdgeInsets.all(ScreenUtil().setSp(20)),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Row(
                     children: [
                       labelTextRegular('Planet Namex 989', ScreenUtil().setSp(6), ThemeColor.darkTextColor),
                       Spacer(),
                       Icon(Icons.search,
                       size: ScreenUtil().setSp(15),)
                     ],
                   ),
                   SizedBox(
                     height: ScreenUtil().setSp(3),
                   ),
                   labelTextLight('Norristown, Pennsylvania, 19403',ScreenUtil().setSp(4),ThemeColor.lightTextColor),
                   SizedBox(
                     height: ScreenUtil().setSp(10),
                   ),
                   const CustomTextField(
                     hint: 'Write down the building, apartment or office...',
                   ),
                   SizedBox(
                     height: ScreenUtil().setSp(8),
                   ),
                   labelTextLight('Detail Address',ScreenUtil().setSp(4),ThemeColor.lightTextColor),
                   SizedBox(
                     height: ScreenUtil().setSp(5),
                   ),
                   RoundedButton(
                     isEnable: true,
                     text: 'Add Address',
                     fontSize: 10,
                     onTap: () {
                     },
                     width: ScreenUtil().setSp(100),
                     height: ScreenUtil().setSp(30),
                   ),
                 ],
               ),
             ),
           )
         ],
       ),
     ),
   );
  }
  
}