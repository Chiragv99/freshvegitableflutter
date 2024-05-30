import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import 'package:provider/provider.dart';

import '../../widget/indidealcard.dart';

class WishListScreen extends StatelessWidget{
  final Function ? setstateCallback;

  const WishListScreen(this.setstateCallback);

  @override
  Widget build(BuildContext context) {
    return Text("data");
    List<Widget> emptyCartWidgets = [
      Row(
        children: [
          Text('My Favorite',
          style: Theme.of(context).textTheme.headline3!.copyWith(
            fontWeight: FontWeight.w700,
          ),),
          Spacer(),
          Icon(
            Icons.search,
            color: kPrimaryGreen,
          )
        ],
      ),
      SizedBox(
        height: ScreenUtil().setSp(16.0),
      ),
      Image.asset('assets/images/empty_cart_illu.png'),
      SizedBox(
        height: getProportionateScreenHeight(16.0),
      ),
      Text(
        'Oops your wishlish is empty',
        style: Theme.of(context).textTheme.headline3!.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(16.0),
      ),
      Text(
        'It seems notinh in here. Explore more and shortlist some items',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4!.copyWith(
          color: kTextColorAccent,
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(16.0),
      ),
      ElevatedButton(
        onPressed: (){},
        child: Text(
          'Start Shopping',
        ),
      ),
      SizedBox(
        height: getProportionateScreenHeight(16.0),
      ),
      SizedBox(
          height: getProportionateScreenHeight(220),
      child: Row(
        children: [
          Expanded(
            child: IndiDealCard(
              noPadding: true,
              isSelected: true, addHandler: (){},
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(8),
          ),
          Expanded(
            child: IndiDealCard(
              noPadding: true,
              isSelected: false, addHandler: (){},
            ),
          ),
        ],
      ),)
    ];

  }

}