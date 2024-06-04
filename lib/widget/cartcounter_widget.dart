import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartCounterWidget extends StatelessWidget{
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
          onPressed: (){}, icon: Icon(
          Icons.business_center,
          color: Color(0xFF3a3737),
        ),
        ),
        counter !=0 ?
        Positioned(
             right: 11,
            top: 11,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
              ),
              constraints: BoxConstraints(
                minWidth: 14,
                minHeight: 14
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 8
                ),
                textAlign: TextAlign.center,
              ),
            ))   :  Container()
      ],
    );
  }
  
}