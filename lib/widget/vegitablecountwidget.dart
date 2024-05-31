import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/vegitablelist_model.dart';
import 'package:onlineshoppingsample/screens/base/base_controller.dart';
import 'package:onlineshoppingsample/widget/custom_icon_back_button.dart';

import '../uttils/appConstant.dart';

class VegitableCountWidget extends GetView<BaseController>{
  final VegitableListModel product;
  const VegitableCountWidget({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final theme = context.theme;
     return Row(
       children: [
         CustomIconBackButton(
            width: 36.w,
            height: 36.h,
             onPressed: (){

             },
             icon: SvgPicture.asset(
               AppConstant.removeIcon,
               fit: BoxFit.none,
             ),
            backgroundColor: theme.cardColor,),
            16.horizontalSpace,
            GetBuilder<BaseController>(
              id: 'ProductQuantity',
              builder: (_) => Text(
                product.quantity.toString(),
                style: theme.textTheme.headline4,
              ),
            ),
         16.horizontalSpace,
            CustomIconBackButton(
                width: 36.w,
                height: 36.h,
                onPressed: () => (){},
                icon: SvgPicture.asset(AppConstant.addIcon,
                fit: BoxFit.none,),
            backgroundColor: theme.primaryColor,)
       ],
     );
  }
}