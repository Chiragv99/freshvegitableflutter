import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/orderpage/orderpage_controller.dart';
import 'package:onlineshoppingsample/widget/cartcounter_widget.dart';

import '../../widget/cart_item.dart';

class OrderPageScreen extends GetView<OrderPageController>{
  OrderPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.purpleAccent,
       elevation: 0,
       title: Center(
         child: Text("Item Carts",
         style: TextStyle(
           color: Colors.black,
         ),),
       ),
       actions: <Widget>[
        CartCounterWidget()
       ],
     ),
     body: getOrderScreenWidget());
  }

  Widget getOrderScreenWidget(){
    return SingleChildScrollView(
      child: itemCartWidget());
  }

  Widget itemCartWidget(){
    return Container(
        padding: EdgeInsets.all(15),
        child:
        Column(
          children: [
            ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context,index) =>
                CartItem(vegitableListModel: controller.products[index],).
                animate(delay: (100 * index).ms).fade().slideX(
                    duration: 300.ms,
                    begin:  -1,
                    curve: Curves.easeInSine
                ),
            separatorBuilder: (_,index) => Padding(
                padding: EdgeInsets.only(
                    top: 12.h,
                    bottom: 24.h
                )), itemCount: controller.products.length),
            SizedBox(
              height: 15,
            ),
            PromoCodeWidget(),
            SizedBox(
              height: 10,
            ),
            TotalCalulationWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left:  5),
              child: Text("Payment Method",
              style: TextStyle(
                fontSize: 20,
                color:  Color(0xFF3a3a3b),
                fontWeight: FontWeight.w700,
              ),),
            ),
            SizedBox(height: 10,),
            PaymentMethodWidget()
          ],
        ));

  }
}

class TotalCalulationWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Container(
       alignment: Alignment.center,
       width: double.infinity,
       height: 150,
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Color(0xFFfae3e2).withOpacity(0.1),
             spreadRadius: 1,
             blurRadius: 1,
             offset: Offset(0, 1),
           )
         ]
       ),
       child: Card(
         color: Colors.white,
         elevation: 0,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.all(
             Radius.circular(5.0)
           ),
         ),
         child: Container(
           alignment: Alignment.center,
           padding: EdgeInsets.only(left: 25,right: 30,top: 10,bottom: 10),
           child: Column(
             children: [
               SizedBox(
                 height: 15,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Grilled Salmon",
                   style: TextStyle(
                     fontSize: 18,

                   ),),
                   Text(
                     "\$192",
                     style: TextStyle(
                         fontSize: 18,
                         color: Color(0xFF3a3a3b),
                         fontWeight: FontWeight.w400),
                     textAlign: TextAlign.left,
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         "Meat vegetable",
                         style: TextStyle(
                             fontSize: 18,
                             color: Color(0xFF3a3a3b),
                             fontWeight: FontWeight.w400),
                         textAlign: TextAlign.left,
                       ),
                       Text(
                         "\$102",
                         style: TextStyle(
                             fontSize: 18,
                             color: Color(0xFF3a3a3b),
                             fontWeight: FontWeight.w400),
                         textAlign: TextAlign.left,
                       )
                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         "Total",
                         style: TextStyle(
                             fontSize: 18,
                             color: Color(0xFF3a3a3b),
                             fontWeight: FontWeight.w600),
                         textAlign: TextAlign.left,
                       ),
                       Text(
                         "\$292",
                         style: TextStyle(
                             fontSize: 18,
                             color: Color(0xFF3a3a3b),
                             fontWeight: FontWeight.w600),
                         textAlign: TextAlign.left,
                       )
                     ],
                   ),
                 ],
               )
             ],
           ),
         ),
       ),
     );
  }

}
class PromoCodeWidget extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 3, right: 3),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFfae3e2).withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0,1)
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFe6e1e1),width: 1.0
                )
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFe6e1e1),
                  width: 1.0
                ),
                borderRadius: BorderRadius.circular(7)
              ),
              fillColor: Colors.white,
              hintText: 'Add Your Promo Code',
              filled: true,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.local_offer,
                  color: Color(0xFFfd2c2c),
                ),
                onPressed: (){
                },
              )
            ),
          ),
        ));
  }
}

class PaymentMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/ic_credit_card.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Text(
                "Credit/Debit Card",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}
