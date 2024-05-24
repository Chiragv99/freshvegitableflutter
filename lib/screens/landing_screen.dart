import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/intro_screen.dart';
import '../uttils/screen_utils.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/landing.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              Spacer(),
              Padding(padding: EdgeInsets.only(bottom: 30),child:  IntroWidget(),),
            ],
          )
        )
      ),
    );
  }
}

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          20,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Veggie Fresh',
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height:  getProportionateScreenHeight(30)),
          Text(
            'We have more than 10,000+ food available for all of you.',
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: kTextColorAccent,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(IntroScreen.routeName);
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}