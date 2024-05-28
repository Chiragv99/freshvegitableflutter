import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/home/populardeals/populardeals_controller.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

import '../../../constants/colors.dart';
import '../../../widget/custom_app_bar.dart';
import '../homescreen.dart';

class PopularDealScreen extends GetView<PopularController>{

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         children: [
           SafeArea(child: Column(
             children: [
               CustomAppBar(
                 'Popular Deals',
                 [
                   Icon(
                     Icons.search,
                     color: kPrimaryGreen,
                   ),
                   SizedBox(
                     width: ScreenUtil().setSp(16),
                   ),
                 ],
               ),
               CustomStaggerGrid(),
             ],
           ))
         ],
       ),
     );
  }

}

class CustomStaggerGrid extends StatelessWidget{

  const CustomStaggerGrid();

  @override
  Widget build(BuildContext context) {
   return Expanded(child:
   StaggeredGridView.countBuilder(
       crossAxisCount: 2,
       itemCount: 10,
       crossAxisSpacing: ScreenUtil().setSp(5),
       mainAxisSpacing: ScreenUtil().setSp(5),
       itemBuilder: (ctx,index){
         if(index % 2 !=0){
           return IndiDealCard(
             isLeft: false,
             isSelected: true,
           );
         }else if (index ==0){
           return IndiDealCard(
             isLeft: true,
             isSelected: true,
             addHandler: (){},
           );
         }
         return IndiDealCard(
           isLeft: true,
           isSelected: true,
         );
       }, staggeredTileBuilder: (index) {
         if(index ==0 || index ==2 || index ==3)
           return StaggeredTile.count(1, 1.3);
         return StaggeredTile.count(1, 2);
   }));
  }

}