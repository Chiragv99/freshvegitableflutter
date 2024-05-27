import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../uttils/screen_utils.dart';

class SearchBar extends StatelessWidget{
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: kFillColorThird,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(4),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(8),
            ),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: 'Enter Address',
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(
              10,
            ),
          ),
          hintStyle: TextStyle(
            color: kGreyShade2,
            fontSize: getProportionateScreenWidth(17),
          )),
    );
  }

}