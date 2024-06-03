import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../uttils/appConstant.dart';
import 'custom_icon_back_button.dart';

class TopHeader extends StatelessWidget{
  final String title;
  final Function seeAll;
  const TopHeader(this.title, this.seeAll);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(5)
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIconBackButton(onPressed: () => Get.back(),
              icon: SvgPicture.asset(
                AppConstant.backArrowIcon,
                fit: BoxFit.none,
                color: theme.appBarTheme.iconTheme?.color,
              )),
          Text('Vegitable',style: theme.textTheme.headline3!.copyWith(
              fontSize: ScreenUtil().setSp(12)
          )),
          CustomIconBackButton(onPressed: (){},
              icon: SvgPicture.asset(
                AppConstant.searchIcon,
                fit: BoxFit.none,
                color: theme.appBarTheme.iconTheme?.color,))
        ],
      ),);
  }
}