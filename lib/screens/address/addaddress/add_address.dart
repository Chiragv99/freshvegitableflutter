import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:onlineshoppingsample/screens/address/addaddress/addaddress_controller.dart';
import 'package:onlineshoppingsample/screens/address/addres_map_contorller.dart';
import 'package:onlineshoppingsample/widget/back_button_Is.dart';

import '../../../constants/colors.dart';
import '../../map_screen.dart';

class AddAddress extends GetView<AddAddressController>{
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtonLS(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setSp(16),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Add New Address',
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(12)
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(MapScreen.routeName);
                          },
                          child:
                          SizedBox(
                            child:  Image.asset('assets/images/map.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setSp(5),
                    ),
                    Row(
                      children: [
                        FittedBox(
                          child: Text(
                            'We will find a grocery near your home address',
                            style: TextStyle(
                              color: kTextColorAccent,
                              fontSize: ScreenUtil().setSp(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setSp(10),
                    ),
                    SearchBar(),
                    SizedBox(
                      height:ScreenUtil().setSp(10),
                    ),
                    Divider(),
                    SizedBox(
                      height: ScreenUtil().setSp(10),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("OnTap"+ "On Tap");
                        controller.redirectToHomeScreen();
                      },
                      child:    Expanded(
                        child: ListTile(
                          leading: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setSp(8),
                                ),
                              ),
                              color: kPrimaryGreen,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(
                                ScreenUtil().setSp(5),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: ScreenUtil().setSp(14),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          title: Text(
                            'Current Location',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(10),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'Planet Namex Street 989',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(6)
                            ),
                          ),
                        ),
                      ),
                    ),
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