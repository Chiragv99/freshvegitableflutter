import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/vegitablelist_model.dart';

class VegitableListWidget extends StatelessWidget{
  final VegitableListModel vegitableList;

  const VegitableListWidget({
    Key? key,
    required this.vegitableList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return
      Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10),
        child:   GestureDetector(
          onTap:  () => {},
          child: Container(
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 12.w,
                  bottom: 12.w,
                  child: GestureDetector(
                    onTap: (){},
                    child: CircleAvatar(
                      radius: 18.r,
                      backgroundColor: theme.primaryColor,
                      child: Icon(
                        Icons.add_rounded,color: Colors.white,
                      ),
                    ).animate().fade(duration: 200.ms),
                  ),
                ),
                Positioned(
                    top: 22.h,
                    left: 26.w,
                    right: 25.w,
                    child:
                    Padding(padding: EdgeInsets.all(30),child: Image.asset(vegitableList.image).animate().slideX(
                        duration: 200.ms,
                        begin: 1,curve: Curves.easeInSine),)
                ),
                Positioned(
                    top: 150.h,
                    left: 16.w,
                    bottom: 24.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(vegitableList.name,style: theme.textTheme.headline6!.copyWith(
                          fontSize: ScreenUtil().setSp(10)
                        ),)
                            .animate().fade().slideY(
                            duration: 200.ms,
                            begin: 1,curve: Curves.easeInSine
                        ),
                        5.verticalSpace,
                        Text( '1kg, ${vegitableList.price}\$',
                          style: theme.textTheme.headline5?.copyWith(
                              color: Colors.red, 
                              fontSize: ScreenUtil().setSp(8)
                          ),
                        ).animate().fade().slideY(
                            duration: 200.ms,
                            begin: 2,curve: Curves.easeInSine
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      );
  }
}