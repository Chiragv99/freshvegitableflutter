import 'categorical.dart';
import 'numerical.dart';

class ProductListType {
  List<Numerical>? numerical;
  List<Categorical>? categorical;

  ProductListType({this.numerical, this.categorical});
}