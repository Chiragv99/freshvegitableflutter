import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

import '../constants/colors.dart';

class CustomIconButton extends StatelessWidget{
  final IconData icon;
  final Function ? onPress;
  final double size;

  const CustomIconButton(this.icon, this.onPress, {this.size = 80});

  @override
  Widget build(BuildContext context) {
   return  SizedBox(
     height: size,
     child: RawMaterialButton(
       fillColor: kGreyShade5,
       elevation: 0,
       constraints: BoxConstraints.tightFor(
         width: ScreenUtil().setSp(size),
         height: ScreenUtil().setSp(size)
       ),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(
           getProportionateScreenWidth(8.0),
         ),
       ),
       onPressed: (){},
       child: Icon(
         icon,
         color: kGreyShade1,
         size: size / 3,
       ),
     ),
   );
  }
  
}