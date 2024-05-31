import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/dashboard/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController>{
  
  @override
  Widget build(BuildContext context) {
    var theme = context.theme;
    return Text("Data");
  }

}