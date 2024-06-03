import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/uttils/appConstant.dart';

class NoData extends StatelessWidget{
  final String? text;
  const NoData({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
         300.verticalSpace,
        //  Image.asset(AppConstant.matches,width: 313.w,height: 260.h,),
          20.verticalSpace,
          Text(text ?? 'No Data',style:context.textTheme.headline4)
        ],
      ),
    );
  }

}