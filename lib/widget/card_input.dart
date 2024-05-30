import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class CardInput extends StatelessWidget{
  const CardInput({
    Key ? key,
    @required this.textController,
  }) : super(key: key);


  final TextEditingController ? textController;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().setSp(12),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          isCollapsed: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setSp(8),
            ),
            borderSide: BorderSide(
              color: kGreyShade3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              ScreenUtil().setSp(8),
            ),
            borderSide: BorderSide(
              color: kGreyShade3,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical:  ScreenUtil().setSp(0),
            horizontal:  ScreenUtil().setSp(4),
          ),
        ),
        style: TextStyle(
          fontSize:  ScreenUtil().setSp(20),
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  
}