import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/models/categoryModel.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';
import '../constants/colors.dart';
import '../screens/home/homescreen.dart';
import '../widget/back_button_Is.dart';
import '../widget/custom_app_bar.dart';
import 'category_controller.dart';

class CategoryScreen extends GetView<CategoryController>{
   CategoryScreen({Key? key}) : super(key: key);

  final List<CategoryModel> categories = [
    const CategoryModel(
      'Vegetables',
      'assets/images/vegetable.png',
      kAccentGreen,
    ),
    const CategoryModel(
      'Fruits',
      'assets/images/fruit.png',
      kAccentRed,
    ),
    const CategoryModel(
      'Milks & egg',
      'assets/images/egg.png',
      kAccentYellow,
    ),
    const CategoryModel(
      'Meat',
      'assets/images/meat.png',
      kAccentPurple,
    ),
    const CategoryModel(
      'Bread',
      'assets/images/bread.png',
      kAccentTosca,
    ),
    const CategoryModel(
      'Fish',
      'assets/images/seafood.png',
      kAccentGreen,
    ),
    const CategoryModel(
      'Cookies',
      'assets/images/cereal.png',
      kAccentRed,
    ),
    const CategoryModel(
      'Herbs',
      'assets/images/herbs.png',
      kAccentYellow,
    ),
    const CategoryModel(
      'Drinks',
      'assets/images/drinks.png',
      kAccentPurple,
    ),
    CategoryModel(
      'Ice Cream',
      'assets/images/cannedfood.png',
      kAccentTosca,
    ),
    CategoryModel(
      'Cheese',
      'assets/images/dairy.png',
      kAccentGreen,
    ),
    CategoryModel(
      'Chips',
      'assets/images/cereal.png',
      kAccentRed,
    ),
  ];

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
            Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  children: List.generate(
                    categories.length,
                        (index) => CategoryCard(
                      categories[index],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}