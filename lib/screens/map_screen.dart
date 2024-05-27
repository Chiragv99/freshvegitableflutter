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
                //  BottomMapCard(),
                ],
              ))
            ],
          )
      ),
    );
  }
}
