import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/search/searchscreen_controller.dart';
import 'package:onlineshoppingsample/widget/searchbar.dart';

import '../../uttils/appConstant.dart';
import '../../widget/tab_titile.dart';
import '../home/homescreen.dart';

class SearchScreen extends  GetView<SearchScreenController>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SearchTab(),
            SizedBox(
              height:ScreenUtil().setSp(15),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  DealCard('${AppConstant.assestPath}banner7.jpeg'),
                  DealCard('${AppConstant.assestPath}banner5.jpeg'),
                  DealCard('${AppConstant.assestPath}banner8.png'),
                  DealCard('${AppConstant.assestPath}banner7.jpeg'),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setSp(10),
            ),
            TabTitle(
                'Featured Vegetables',
                (){
                  print("TabTitle"+ "TabTile");
                }
            ),
            Container(
              height: ScreenUtil().setSp(120),
              child: Row(
                children: [
                  Expanded(child:IndiDealCard(
                    isLeft: true,
                    isSelected: true,
                  ), ),
                  Expanded(child:IndiDealCard(
                    isLeft: true,
                    isSelected: true,
                  ), )
                ],
              ),
            ),
            TabTitle(
              'Special Bundle',
                  () {},
            ),
            Container(
              height: ScreenUtil().setSp(120),
              child: Row(
                children: [
                  Expanded(
                    child: IndiDealCard(
                      isLeft: true,
                      isSelected: true,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setSp(8.0),
                  ),
                  Expanded(
                    child: IndiDealCard(
                      isLeft: false,
                      isSelected: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

}
class SearchTab extends StatelessWidget{
  const SearchTab({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(padding: EdgeInsets.symmetric(
    horizontal: ScreenUtil().setSp(10)
  ),
  child:  Row(
    children: [
      SizedBox(
        height: 50,
      ),
      Expanded(
        child: SearchBarWidget(),
      ),
      SizedBox(
        width:ScreenUtil().setSp(10),
      ),
      Image.asset('assets/images/bell.png'),
    ],
  ),);
  }
}