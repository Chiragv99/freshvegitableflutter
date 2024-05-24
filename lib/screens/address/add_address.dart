import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../uttils/screen_utils.dart';
import '../../widget/back_button_Is.dart';
import '../map_screen.dart';

class AddAddressScreen extends StatelessWidget {
  static const routeName = '/add_address_screen';
  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtonLS(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Add New Address',
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(14)
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(MapScreen.routeName);
                          },
                          child: Image.asset('assets/images/map.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      children: [
                        FittedBox(
                          child: Text(
                            'We will find a grocery near your home address',
                            style: TextStyle(
                              color: kTextColorAccent,
                              fontSize: getProportionateScreenWidth(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    SearchBar(),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Divider(),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(5),
                              ),
                            ),
                            color: kPrimaryGreen,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(
                              getProportionateScreenWidth(5),
                            ),
                            child: Icon(
                              Icons.location_on_outlined,
                              size: getProportionateScreenWidth(18),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          'Planet Namex Street 989',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(10)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

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
              getProportionateScreenWidth(5),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: 'Enter Address',
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(
              5,
            ),
          ),
          hintStyle: TextStyle(
            color: kGreyShade2,
            fontSize: getProportionateScreenWidth(14),
          )),
    );
  }
}