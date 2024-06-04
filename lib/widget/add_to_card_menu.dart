import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCardMenu extends StatelessWidget{
  final int productCounter;
  AddToCardMenu(this.productCounter);

  @override
  Widget build(BuildContext context) {
     return Container(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           IconButton(
               onPressed: (){}, icon: Icon(Icons.remove),
           color: Colors.black,
           iconSize: 18,),
           InkWell(
             onTap: () => {},
             child: Container(
               width: 100.0,
               height: 35.0,
               decoration: BoxDecoration(
                 color: Color(0xFFfd2c2c),
                 border: Border.all(color: Colors.white,width: 2.0),
                 borderRadius: BorderRadius.circular(5.0)
               ),
               child: Center(
                 child: Text(
                   'Add to $productCounter',
                   style: TextStyle(
                     fontSize: 12.0,
                     color: Colors.white,
                     fontWeight: FontWeight.w700
                   ),
                 ),
               ),
             ),
           ),
           IconButton(
               onPressed: (){}, icon: Icon(Icons.add),
           color: Colors.red,
           iconSize: 18,)
         ],
       ),
     );
  }
}