import 'package:onlineshoppingsample/models/product_list_type.dart';

import '../core/app_data.dart';

enum ProductType { all, watch, mobile, headphone, tablet, tv }

class ProductlistModel {
  String name;
  int price;
  int? off;
  String about;
  bool isAvailable;
  ProductListType? sizes;
  int _quantity;
  List<String> images;
  bool isFavorite;
  double rating;
  ProductType type;

  int get quantity => _quantity;

  set quantity(int newQuantity) {
    if (newQuantity >= 0) _quantity = newQuantity;
  }

  ProductlistModel({
    this.sizes,
    this.about = AppData.dummyText,
    required this.name,
    required this.price,
    required this.isAvailable,
    required this.off,
    required int quantity,
    required this.images,
    required this.isFavorite,
    required this.rating,
    required this.type,
  }) : _quantity = quantity;
}