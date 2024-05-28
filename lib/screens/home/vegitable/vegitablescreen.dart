import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/vegitable_model.dart';
import 'package:onlineshoppingsample/screens/home/vegitable/vegitablescreen_controller.dart';
import 'package:onlineshoppingsample/uttils/appConstant.dart';
import 'package:onlineshoppingsample/uttils/custom_theme.dart';
import '../../../constants/colors.dart';
import '../../../widget/customappbarverge.dart';

class vegitableScreen extends GetView<VegitableController>{
  vegitableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<VegitableModel> listVegitable = [
      VegitableModel('Dragon Fruit','${AppConstant.assestPath}banner7.jpeg',"40","90",true),
      VegitableModel('Potato','${AppConstant.assestPath}banner7.jpeg',"100","20",false),
      VegitableModel('Lady Finger','${AppConstant.assestPath}banner7.jpeg',"30","10",false),
      VegitableModel('Lady Finger','${AppConstant.assestPath}banner7.jpeg',"150","50",true),
      VegitableModel('Lady Finger','${AppConstant.assestPath}banner7.jpeg',"60","18",true),
    ];
   return Scaffold(
     body: SafeArea(
         child:
         Column(
           children: [
             CustomAppBarVege(),
             SizedBox(
               height: ScreenUtil().setSp(20),
             ),
             Expanded(
                 child:
                 ListView.builder(
                   itemCount: listVegitable.length,
                   itemBuilder: (context,index){
                    return  ListCard(
                      vegitableName: listVegitable[index].vegitableName,
                      vegitableIcon: listVegitable[index].vegitableIcon,
                      vegitablePrice: listVegitable[index].vegitablePrice,
                      vegitableDiscount: listVegitable[index].vegitableDiscount,
                      isDiscount: listVegitable[index].isDiscount,
                    );
                 }))
           ],
         ),
       ),
   );
  }
}

class ListCard extends StatelessWidget{

  final String ? vegitableName;
  final String ? vegitableIcon;
  final String ? vegitablePrice;
  final String  ?vegitableDiscount;
  final bool ? isDiscount;

  const ListCard({this.vegitableName, this.vegitableIcon,this.vegitablePrice,this.vegitableDiscount,this.isDiscount});

  @override
  Widget build(BuildContext context) {
     return Container(
       width: double.infinity,
       height: ScreenUtil().setSp(60),
       padding: EdgeInsets.all(
         ScreenUtil().setSp(2.0),
       ),
       decoration: CustomTheme.roundButtonDecoration(
       ),
       child: Row(
         children: [
           Expanded(
             child: Container(
               height: ScreenUtil().setSp(60),
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage(vegitableIcon!),fit: BoxFit.fill),
                 color: kGreyShade5,
                 borderRadius: BorderRadius.circular(
                  ScreenUtil().setSp(5),
                 ),
               ),
             ),
           ),
           SizedBox(
             width: ScreenUtil().setSp(10),
           ),
           Expanded(
              flex: 2,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   if (isDiscount!)
                     Container(
                       padding: EdgeInsets.symmetric(
                         horizontal:   ScreenUtil().setSp(4),
                       ),
                       decoration: const ShapeDecoration(
                         shape: StadiumBorder(),
                         color: kAlertColor,
                       ),
                       child: Text(
                         'Disc 40%',
                         style: TextStyle(
                           color: Colors.white,
                         ),
                       ),
                     ),
                   Text(
                     vegitableName!,
                     style: Theme.of(context).textTheme.headline4!.copyWith(
                       fontWeight: FontWeight.w600,
                       fontSize:  ScreenUtil().setSp(10),
                     ),
                   ),
                   Text(
                     '200gr',
                     style: TextStyle(
                       fontSize:  ScreenUtil().setSp(8),
                       color: kTextColorAccent,
                     ),
                   ),
                 ],
               ),
           ),
           Container(
             margin: const EdgeInsets.only(right: 10),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 if (isDiscount!)
                   Text(
                     '\₹' + vegitableDiscount!,
                     style: TextStyle(
                       color: Colors.red,
                       decoration: TextDecoration.lineThrough,
                     ),
                   ),
                 Text(
                   '\₹' + vegitablePrice!,
                   style: TextStyle(
                     color: Colors.green.shade400,
                     fontSize: ScreenUtil().setSp(14),
                     fontWeight: FontWeight.w700,
                   ),
                 ),
               ],
             ) ,
           )
         ],
       ),
     );
  }
}