import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import '../constants/colors.dart';

class BackButtonText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: kPrimaryGreen,
          ),
          Text(
            'Back',
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: kPrimaryGreen,
              fontSize: ScreenUtil().setSp(18)
            ),
          ),
        ],
      ),
    );
  }
}