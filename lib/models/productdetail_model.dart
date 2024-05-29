import 'package:flutter/material.dart';

class ProductDetailModel with ChangeNotifier {
  final String ? name;
  final String ? mass;
  final String ? originalPrice;
  final String ? discountPrice;
  bool ? _isFavorite;

  ProductDetailModel({
    this.name,
    this.mass,
    this.originalPrice,
    this.discountPrice,
  });

  void toggleFavorite() {
    _isFavorite = !_isFavorite!;
    notifyListeners();
  }
}

class ProductDetailModel1 with ChangeNotifier {
  final List<ProductDetailModel> _items = [
    ProductDetailModel(
      name: 'Dragon Fruit',
      mass: '200gr',
      originalPrice: '90',
      discountPrice: '45',
    ),
  ];

  final List<ProductDetailModel> _favoriteItems = [];

  void addToFavorite(ProductDetailModel item) {
    _favoriteItems.add(item);
  }

  List<ProductDetailModel> get favoriteItems {
    return [..._favoriteItems];
  }
}