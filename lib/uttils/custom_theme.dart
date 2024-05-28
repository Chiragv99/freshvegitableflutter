import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import '../constants/colors.dart';

class CustomTheme {
  final BoxConstraints constraints;
  CustomTheme(this.constraints);

  final double designWidth = 375.0;
  final double designHeight = 812.0;

  double _getProportionateScreenWidth(inputWidth) {
    return (inputWidth / designWidth) * constraints.maxWidth;
  }

  double _getProportionateScreenHeight(inputHeight) {
    return (inputHeight / designHeight) * constraints.maxHeight;
  }

  nunito() => GoogleFonts.nunitoTextTheme(
    TextTheme(
      headline1: TextStyle(
        fontSize: _getProportionateScreenWidth(60),
        fontWeight: FontWeight.normal,
      ),
      headline2: TextStyle(
        fontSize: _getProportionateScreenWidth(36),
        fontWeight: FontWeight.normal,
      ),
      headline3: TextStyle(
        fontSize: _getProportionateScreenWidth(24),
        fontWeight: FontWeight.normal,
      ),
      headline4: TextStyle().copyWith(
        fontSize: _getProportionateScreenWidth(16),
        fontWeight: FontWeight.normal,
      ),
      bodyText1: TextStyle(
        fontSize: _getProportionateScreenWidth(14),
        fontWeight: FontWeight.w600,
      ),
      bodyText2: TextStyle(
        fontSize: _getProportionateScreenWidth(14),
      ),
    ),
  );

 static roundButtonDecoration() => ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(5),
        ),
      )
  );

 static boxShadow() =>BoxShadow(
   color: kShadowColor,
   offset: Offset(
     getProportionateScreenWidth(24),
     getProportionateScreenWidth(40),
   ),
   blurRadius: 80,
 );

  elevatedButtonTheme() => ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        kPrimaryGreen,
      ),
      foregroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      elevation: MaterialStateProperty.all(
        0,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            _getProportionateScreenWidth(4),
          ),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: _getProportionateScreenWidth(16),
        ),
      ),
      minimumSize: MaterialStateProperty.all(
        Size(
          double.infinity,
          _getProportionateScreenHeight(56),
        ),
      ),
    ),
  );

  outlinedButtonTheme() => OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      foregroundColor: MaterialStateProperty.all(
        kPrimaryGreen,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            _getProportionateScreenWidth(4),
          ),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      side: MaterialStateProperty.all(
        BorderSide(
          width: _getProportionateScreenWidth(
            1.5,
          ),
          color: kPrimaryGreen,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: _getProportionateScreenWidth(
            16,
          ),
        ),
      ),
      minimumSize: MaterialStateProperty.all(
        Size(
          double.infinity,
          _getProportionateScreenHeight(56),
        ),
      ),
    ),
  );
}