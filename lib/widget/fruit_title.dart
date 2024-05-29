import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';


class FruitTitle extends StatelessWidget{
   FruitTitle({
    Key? key,
    String ? title,
  })  : _title = title!,
        super(key: key);

  final String _title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            _title,
            style: Theme
                .of(context)
                .textTheme
                .headline3!
                .copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
          },
          child: Icon(
            Icons.favorite_border_outlined,
            color: kPrimaryGreen,
            size: ScreenUtil().setSp(12),
          ),
        )
      ],
    );
  }
}