import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/address/addres_contorller.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

import '../../widget/back_button_Is.dart';
import '../map_screen.dart';

class AddressMap extends GetView<AddressController>{
  const AddressMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        fontSize: ScreenUtil().setSp(17),
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(
                    width: getProportionateScreenWidth(32),
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