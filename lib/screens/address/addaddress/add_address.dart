import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:onlineshoppingsample/screens/address/addres_contorller.dart';

class AddAddress extends GetView<AddressController>{
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Data");
  }
}