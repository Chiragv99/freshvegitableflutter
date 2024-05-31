import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomIconBackButton extends StatelessWidget{
  final Function()? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width;
  final double? height;

  const CustomIconBackButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.borderColor,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return SizedBox(
      width: width ?? 35.w,
      height: height ?? 35.h,
      child: Material(
        color: backgroundColor ?? theme.backgroundColor,
        shape: borderColor == null ? const CircleBorder() : CircleBorder(
          side: BorderSide(color: borderColor!),
        ),
        child: InkWell(
          onTap: onPressed,
          highlightColor: theme.primaryColor.withOpacity(0.2),
          customBorder: const CircleBorder(),
          child: icon,
        ),
      ),
    );
  }
}