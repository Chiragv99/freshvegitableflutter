import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../widget/back_button_Is.dart';
import 'category_controller.dart';

class CategoryScreen extends GetView<CategoryController>{
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonLS(),
        ],
      )),
    );
  }
}