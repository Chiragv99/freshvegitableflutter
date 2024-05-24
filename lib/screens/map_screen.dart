import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineshoppingsample/constants/colors.dart';
import 'package:onlineshoppingsample/screens/address/add_address.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import 'package:onlineshoppingsample/widget/back_button_Is.dart';

import '../widget/custom_text_field.dart';

class MapScreen extends StatelessWidget{
  static const routeName = '/map_screen';

  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonLS(),
                  Text('Choose Your Address',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(17),
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(
                    width: getProportionateScreenWidth(32),
                  )
                ],
              ),
              Expanded(child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset('assets/images/map_pattern.png',
                    fit:BoxFit.fill,),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      child:
                      Image.asset('assets/images/curLoc.png',)),
                  BottomMapCard(),
                ],
              ))
            ],
          )
      ),
    );
  }
}

class BottomMapCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return  Align(
     alignment: Alignment.bottomCenter,
     child: SizedBox(
       child:  Column(
         mainAxisSize:  MainAxisSize.min,
         crossAxisAlignment:  CrossAxisAlignment.end,
         children: [
           Padding(padding: EdgeInsets.symmetric(
             horizontal: getProportionateScreenWidth(20),
           ),
           child: SizedBox(
             width: getProportionateScreenWidth(56),
             height: getProportionateScreenWidth(56),
             child: FloatingActionButton(
               onPressed: () {},
               backgroundColor: kPrimaryGreen,
               child: Icon(
                 Icons.gps_fixed,
                 size: getProportionateScreenWidth(32),
               ),
             ),
           ),),
           SizedBox(
             height: getProportionateScreenHeight(10),
           ),
           Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(
                   getProportionateScreenWidth(8),
                 ),
                 topRight: Radius.circular(
                   getProportionateScreenWidth(8)
                 )
               )
             ),
             child: Padding(
               padding: EdgeInsets.all(getProportionateScreenWidth(20)),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Row(
                     children: [
                       Text('Planet Namex 989',
                       style: Theme.of(context).textTheme.headline3!.copyWith(
                         fontWeight: FontWeight.w700
                       ),),
                       Spacer(),
                       Icon(Icons.search,
                       size: getProportionateScreenWidth(32),)
                     ],
                   ),
                   SizedBox(
                     height: getProportionateScreenHeight(10),
                   ),
                   Text(
                     'Norristown, Pennsylvania, 19403',
                     style: Theme.of(context).textTheme.headline4!.copyWith(
                       color: kTextColorAccent,
                     ),
                   ),
                   SizedBox(
                     height: getProportionateScreenHeight(10),
                   ),
                   const CustomTextField(
                     hint: 'Write down the building, apartment or office...',
                   ),
                   SizedBox(
                     height: getProportionateScreenHeight(10),
                   ),
                   Text(
                     'Detail Address',
                     style: Theme.of(context).textTheme.headline4!.copyWith(
                       color: kTextColorAccent,
                     ),
                   ),
                   SizedBox(
                     height: getProportionateScreenHeight(5),
                   ),
                   ElevatedButton(onPressed: () {
                     Navigator.of(context).pushNamed(AddAddressScreen.routeName);
                   }, child: const Text('Add Address'))
                 ],
               ),
             ),
           )
         ],
       ),
     ),
   );
  }
  
}