import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class PreviousPriceTag extends StatelessWidget{
  const PreviousPriceTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image:  AssetImage('assets/images/Divider2.png')
         )
       ),
       child: Container(
         padding: EdgeInsets.symmetric(
           horizontal: ScreenUtil().setSp(10),
           vertical: ScreenUtil().setSp(8)
         ),
         decoration: ShapeDecoration(
           color: kFailColor.withOpacity(0.15),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(
               ScreenUtil().setSp(8.0),
             ),
           ),
         ),
         child: Text(
           '\$126',
           style: TextStyle(
             color: kFailColor,
           ),
         ),
       ),
     );
  }

  
}