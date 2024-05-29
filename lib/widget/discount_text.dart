import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class DiscoutText extends StatelessWidget {
  const DiscoutText({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(4),
      ),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: kAlertColor,
      ),
      child: Text(
        'Disc 40%',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}