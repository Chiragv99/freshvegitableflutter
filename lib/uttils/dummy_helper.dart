import 'package:onlineshoppingsample/models/vegitablelist_model.dart';
import 'package:onlineshoppingsample/uttils/appConstant.dart';

class DummyHelper {
  const DummyHelper._();

  static const _description = 'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.';

  static List<Map<String, String>> cards = [
    {'icon': AppConstant.lotus, 'title': '100%', 'subtitle': 'Organic'},
    {'icon': AppConstant.calendar, 'title': '1 Year', 'subtitle': 'Expiration'},
    {'icon': AppConstant.favourites, 'title': '4.8 (256)', 'subtitle': 'Reviews'},
    {'icon': AppConstant.matches, 'title': '80 kcal', 'subtitle': '100 Gram'},
  ];

  static List<VegitableListModel> products = [
    VegitableListModel(
      id: 1,
      image: AppConstant.bellPepper,
      name: 'Bell Pepper Red',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    VegitableListModel(
      id: 2,
      image: AppConstant.lambMeat,
      name: 'Lamb Meat',
      quantity: 0,
      price: 44.99,
      description: _description,
    ),
    VegitableListModel(
      id: 3,
      image: AppConstant.ginger,
      name: 'Arabic Ginger',
      quantity: 0,
      price: 4.99,
      description: _description,
    ),
    VegitableListModel(
      id: 4,
      image: AppConstant.cabbage,
      name: 'Fresh Lettuce',
      quantity: 0,
      price: 3.99,
      description: _description,
    ),
    VegitableListModel(
      id: 5,
      image: AppConstant.pumpkin,
      name: 'Butternut Squash',
      quantity: 0,
      price: 8.99,
      description: _description,
    ),
    VegitableListModel(
      id: 6,
      image: AppConstant.carrot,
      name: 'Organic Carrots',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    VegitableListModel(
      id: 7,
      image: AppConstant.cauliflower,
      name: 'Fresh Broccoli',
      quantity: 0,
      price: 3.99,
      description: _description,
    ),
    VegitableListModel(
      id: 8,
      image: AppConstant.tomatoes,
      name: 'Cherry Tomato',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    VegitableListModel(
      id: 9,
      image: AppConstant.spinach,
      name: 'Fresh Spinach',
      quantity: 0,
      price: 2.99,
      description: _description,
    ),
  ];

}