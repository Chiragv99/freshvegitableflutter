import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

import '../widget/back_button_Is.dart';

class LoginPage extends StatelessWidget{
  static const routeName = '/loginPage';

  @override
  Widget build(BuildContext context) {
      ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonLS(),
          Expanded(child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16)
            ),
            child: Column(
              children: [
                Text('Log In Continue!')
              ],
            ),
          ))
        ],
      )),
    );
  }


}