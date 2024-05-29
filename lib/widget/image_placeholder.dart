import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/constants/colors.dart';

class ImagePlaceHolder extends StatelessWidget{
  ImagePlaceHolder({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kGreyShade5,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical:  ScreenUtil().setSp(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: kGreyShade1,
                  radius: ScreenUtil().setSp(4),
                ),
                SizedBox(
                  width:  ScreenUtil().setSp(5.0),
                ),
                CircleAvatar(
                  backgroundColor: kGreyShade3,
                  radius: ScreenUtil().setSp(4),
                ),
                SizedBox(
                  width: ScreenUtil().setSp(3.0),
                ),
                CircleAvatar(
                  backgroundColor: kGreyShade3,
                  radius: ScreenUtil().setSp(3.0),
                ),
                SizedBox(
                  width: ScreenUtil().setSp(3.0),
                ),
                CircleAvatar(
                  backgroundColor: kGreyShade3,
                  radius: ScreenUtil().setSp(3.0),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  
}