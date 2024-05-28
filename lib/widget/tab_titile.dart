import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/home/homescreen.dart';

class TabTitle extends StatelessWidget{
  final String title;
  final Function seeAll;
  const TabTitle(this.title, this.seeAll);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: ScreenUtil().setSp(5)
    ),
    child:  Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(8),
              fontWeight: FontWeight.w700
            ),
          ),
        ),
        TextButton(
          onPressed: (){},
          child: Text(
            'See All',
          ),
        )
      ],
    ),);
  }
}