import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'back_button_text.dart';

class CustomAppBarVege extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BackButtonText()),
        Text(
          'Featured Vegetables',
          style: TextStyle(
            fontSize: ScreenUtil().setSp(12),
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.search,
                color: kPrimaryGreen,
              ),
              SizedBox(
                width: ScreenUtil().setSp(10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}