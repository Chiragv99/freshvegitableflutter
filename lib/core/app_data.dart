import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:onlineshoppingsample/models/product_list_model.dart';
import 'package:onlineshoppingsample/models/product_list_type.dart';

import '../models/categorical.dart';
import '../models/numerical.dart';

class AppData {
  const AppData._();

  static const String dummyText = 'Lorem Ipsum is simply dummy text of the printing and typesetting'
      ' industry. Lorem Ipsum has been the industry\'s standard dummy text'
      ' ever since the 1500s, when an unknown printer took a galley of type'
      ' and scrambled it to make a type specimen book.';


  static List<BottomNavyBarItem> bottomNavyBarItems = [
     BottomNavyBarItem(
      icon:  Icon(Icons.home), title: Text("Home"),activeColor:   Color(0xFFEC6813),
      inactiveColor:  Colors.grey
    ),
     BottomNavyBarItem(
       icon:  Icon(Icons.favorite), title: Text("Favorite"),activeColor:   Color(0xFFEC6813),
       inactiveColor:  Colors.grey
    ),
    BottomNavyBarItem(
        icon:  Icon(Icons.shopping_cart), title: Text("Cart"),activeColor:   Color(0xFFEC6813),
        inactiveColor:  Colors.grey
    ),
    BottomNavyBarItem(
        icon:  Icon(Icons.preview_rounded), title: Text("Favorite"),activeColor:   Color(0xFFEC6813),
        inactiveColor:  Colors.grey
    ),
  ];


  static List<ProductlistModel> products = [
    ProductlistModel(
      name: 'Beetroot',
      price: 460,
      isAvailable: true,
      off: 300,
      quantity: 0,
      images: [
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: true,
      rating: 1,
      type: ProductType.mobile,
    ),
    ProductlistModel(
      name: 'Black-eyed beans',
      price: 380,
      isAvailable: false,
      off: 220,
      quantity: 0,
      images: [
        'assets/images/banner2.png',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 4,
      type: ProductType.tablet,
    ),
    ProductlistModel(
      name: 'Broad beans',
      price: 650,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/banner3.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 3,
      type: ProductType.tablet,
    ),
    ProductlistModel(
      name: 'Broccoli',
      price: 229,
      isAvailable: true,
      off: 200,
      quantity: 0,
      images: [
        'assets/images/banner5.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 5,
      sizes: ProductListType(
        categorical: [
          Categorical(CategoricalType.small, true),
          Categorical(CategoricalType.medium, false),
          Categorical(CategoricalType.large, false),
        ],
      ),
      type: ProductType.watch,
    ),
    ProductlistModel(
      name: 'Carrots',
      price: 330,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 4,
      sizes: ProductListType(
        numerical: [
          Numerical('41', true),
          Numerical('45', false),
        ],
      ),
      type: ProductType.watch,
    ),
    ProductlistModel(
      name: 'Endive',
      price: 230,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 2,
      type: ProductType.headphone,
    ),
    ProductlistModel(
      name: 'FENNEL',
      price: 497,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      rating: 3,
      sizes: ProductListType(
        numerical: [
          Numerical('43', true),
          Numerical('50', false),
          Numerical('55', false),
        ],
      ),
      type: ProductType.tv,
    ),
    ProductlistModel(
      name: 'GARLIC',
      price: 498,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/banner6.jpeg',
        'assets/images/banner6.jpeg',
      ],
      isFavorite: false,
      sizes: ProductListType(
        numerical: [
          Numerical('50', true),
          Numerical('65', false),
          Numerical('85', false),
        ],
      ),
      rating: 2,
      type: ProductType.tv,
    ),
  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

}
