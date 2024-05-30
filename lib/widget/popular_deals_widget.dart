import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlineshoppingsample/models/product_list_model.dart';
import 'package:onlineshoppingsample/uttils/screen_utils.dart';

import '../animation/open_container_wrapper.dart';

class PopularDealsWidget extends StatelessWidget{

  const PopularDealsWidget({
    Key? key,
    required this.items,
    required this.isPriceOff,
    required this.likeButtonPressed,
  }) : super(key: key);

  final List<ProductlistModel> items;
  final bool Function(ProductlistModel product) isPriceOff;
  final void Function(int index) likeButtonPressed;


  Widget _gridItemHeader(ProductlistModel product, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: isPriceOff(product),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              width: 80,
              height: 30,
              alignment: Alignment.center,
              child:  Text(
                "30% OFF",
                style: TextStyle(fontWeight: FontWeight.w600).copyWith(
                  fontSize: ScreenUtil().setSp(5)
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: items[index].isFavorite
                  ? Colors.redAccent
                  : const Color(0xFFA6A3A0),
            ),
            onPressed: () => likeButtonPressed(index),
          ),
        ],
      ),
    );
  }

  Widget _gridItemBody(ProductlistModel product) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E6E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child:
      Image.asset(product.images[0],fit: BoxFit.fill,),
    );
  }

  Widget _gridItemFooter(ProductlistModel product, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: ScreenUtil().setSp(40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                product.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: ScreenUtil().setSp(8)
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  product.off != null
                      ? "\₹${product.off}"
                      : "\₹${product.price}",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: ScreenUtil().setSp(10),
                    color: Colors.green
                  ),
                ),
                 SizedBox(width: 2),
                Visibility(
                  visible: product.off != null ? true : false,
                  child: Text(
                    "\₹${product.price}",
                    style:  TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(6)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 10 / 8,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (_, index) {
          ProductlistModel product = items[index];
          return OpenContainerWrapper(
            product: product,
            child: GridTile(
              header: _gridItemHeader(product, index),
              footer: _gridItemFooter(product, context),
              child: _gridItemBody(product),
            ),
          );
        },
      ),
    );
  }
}