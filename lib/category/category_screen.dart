import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import '../constants/colors.dart';
import '../widget/custom_app_bar.dart';
import 'category_controller.dart';

class CategoryScreen extends GetView<CategoryController>{
   CategoryScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              'Categories',
              [
                Icon(
                  Icons.search,
                  color: kPrimaryGreen,
                ),
                SizedBox(
                  width: 20
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
          ],
        ),
      ),
    );
  }
}