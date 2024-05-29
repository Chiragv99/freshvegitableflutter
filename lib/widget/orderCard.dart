import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/cart/cartscreen_controller.dart';

class OrderCard extends GetView<CartScreenController>{

  final bool ? isSelected;
  final Function() ? onTapHandler;


  OrderCard({Key? key,
    this.isSelected = false,
    this.onTapHandler,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: '1');
   return  Slidable(
   );
  }

}