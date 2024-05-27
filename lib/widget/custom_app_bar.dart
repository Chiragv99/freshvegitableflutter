import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'back_button_text.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  const CustomAppBar(this.title, this.actions);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BackButtonText()),
        Text(
          title,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(10),
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: actions),
        ),
      ],
    );
  }
}