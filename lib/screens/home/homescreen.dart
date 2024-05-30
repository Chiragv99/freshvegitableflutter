import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:onlineshoppingsample/controller/product_controller.dart';
import 'package:onlineshoppingsample/models/categoryModel.dart';
import 'package:onlineshoppingsample/screens/home/homescreen_controller.dart';
import 'package:onlineshoppingsample/uttils/appConstant.dart';
import 'package:onlineshoppingsample/widget/popular_deals_widget.dart';

import '../../constants/colors.dart';

class HomeScreen extends GetView<HomeScreenController>{
  HomeScreen({Key? key}) : super(key: key);

  final ProductController controller1 = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> listCategory = [
      CategoryModel('Vegetables',  '${AppConstant.assestPath}vegetable_home.png',  kAccentGreen),
      CategoryModel('Fruits', '${AppConstant.assestPath}fruit_home.png', kAccentRed),
      CategoryModel("Milks & Egg", '${AppConstant.assestPath}meat_home.png', kAccentPurple),
      CategoryModel("Vegetables", '${AppConstant.assestPath}bread.png', kAccentGreen),
      CategoryModel("Fruits", '${AppConstant.assestPath}cannedfood.png', kAccentRed),
      CategoryModel("Milks & Egg", '${AppConstant.assestPath}cereal.png', kAccentPurple),
      CategoryModel('Vegetables',  '${AppConstant.assestPath}vegetable_home.png',  kAccentGreen),
      CategoryModel('Fruits', '${AppConstant.assestPath}dairy.png', kAccentRed),
      CategoryModel("Milks & Egg", '${AppConstant.assestPath}drinks.png', kAccentPurple),
    ];

    final List<CategoryModel> listBanner = [
      CategoryModel("Milks & Egg", '${AppConstant.assestPath}banner7.jpeg', kAccentPurple),
      CategoryModel('Vegetables',  '${AppConstant.assestPath}banner5.jpeg',  kAccentGreen),
      CategoryModel('Vegetables',  '${AppConstant.assestPath}banner8.png',  kAccentGreen),
      CategoryModel('Fruits', '${AppConstant.assestPath}banner7.jpeg', kAccentRed),
      CategoryModel("Milks & Egg", '${AppConstant.assestPath}banner5.jpeg', kAccentPurple),
      CategoryModel("Vegetables", '${AppConstant.assestPath}banner8.png', kAccentGreen),
      CategoryModel("Fruits", '${AppConstant.assestPath}banner5.jpeg', kAccentRed),
    ];
    return Scaffold(
        body:  SafeArea(
            child:
             Column(
               children: [
                 Expanded(child: SingleChildScrollView(
                   child: Column(
                     children: [
                       const SizedBox(
                         height: 20,
                       ),
                       HomeAppBar(controller: controller),
                       CategoryTab(categories: listCategory,controller: controller,),
                       const SizedBox(
                         height: 10,
                       ),
                       DealsTab(categoriesBanner: listBanner,controller: controller,),
                       Padding(padding: EdgeInsets.only(left: ScreenUtil().setSp(18),right:ScreenUtil().setSp(18)),child:
                       Row(
                         children: [
                           const Expanded(child: Text('Popular Deals')),
                           TextButton(onPressed: (){
                             controller.redirectToPopularDealScreen();
                           }, child: const Text('See All'))
                         ],
                       )),
                      Padding(padding: EdgeInsets.all(10),child:
                      GetBuilder(builder: (ProductController controller){
                        return PopularDealsWidget(
                            items: controller.filteredProducts,
                            isPriceOff: (product) => controller.isPriceOff(product),
                            likeButtonPressed: (index) => controller.isFavorite(index));
                      },))
                     ],
                   ),
                 ))
               ],
             )
           )
    );
  }
}


class IndiDealCard extends StatelessWidget {
  final bool? isLeft;
  final bool ? isSelected;
  final bool? noPadding;
  final Function ? addHandler;

  const IndiDealCard({super.key, this.isLeft, this.isSelected,this.addHandler, this.noPadding = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isLeft! ? ScreenUtil().setSp(10.0) : 0,
        right: isLeft! ? 0 : ScreenUtil().setSp(2.0),
      ),
      child: Container(
        padding: EdgeInsets.all(
          ScreenUtil().setSp(3.0),
        ),
        decoration: BoxDecoration(
          color: isSelected! ? Colors.white : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(
            ScreenUtil().setSp(
              8,
            ),
          ),
          boxShadow: [
            isSelected!
                ? BoxShadow(
              color: kShadowColor,
              offset: Offset(
                ScreenUtil().setSp(24),
                ScreenUtil().setSp(40),
              ),
              blurRadius: 80,
             ) : const BoxShadow(color: Colors.transparent),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('${AppConstant.assestPath}banner1.png'),fit: BoxFit.fill),
                  color: kGreyShade5,
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setSp(8.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dragon Fruit',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(10)
                    ),
                  ),
                  Text(
                    '200gr',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(8),
                      color: kTextColorAccent,

                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$45',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: ScreenUtil().setSp(8)
                          ),
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: kPrimaryGreen,
                        constraints: BoxConstraints.tightFor(
                          width: ScreenUtil().setSp(
                            20,
                          ),
                          height: ScreenUtil().setSp(
                            20,
                          ),
                        ),
                        elevation: 0,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DealsTab extends StatelessWidget {

  final List<CategoryModel> categoriesBanner;
  HomeScreenController controller;

   DealsTab({
    super.key,
    required this.categoriesBanner,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(
              16,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Special Deals for You',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: ScreenUtil().setSp(14)
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                    controller.redirectToVegetableScreen();
                },
                child:  Text(
                  'See All',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: ScreenUtil().setSp(12)
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:  ScreenUtil().setSp(10),
        ),
        SizedBox(
            height: ScreenUtil().setSp(170),
            child:
        ListView.builder(
            itemCount: categoriesBanner.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  controller.redirectToProductDetailScreen();
                  print("Index"+ index.toString());
                },
                child: DealCard(categoriesBanner[index].catIcon),);
            }))
      ],
    );
  }
}
class HomeAppBar extends StatelessWidget{
  HomeScreenController controller;
   HomeAppBar({
    Key? key,
    required this.controller
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
     return Padding(padding: EdgeInsets.symmetric(
       horizontal: ScreenUtil().setSp(16),
     ),
     child:  Row(
       children: [
         Expanded(child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               'Planet Namex 989',
               style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                 fontWeight: FontWeight.w700,
                 fontSize: ScreenUtil().screenWidth * 0.040
               ),
             ),
             Text(
               'Norristown, Pennsyvlvania, 19403',
               style: TextStyle(
                 color: kTextColorAccent,
                 fontSize:  ScreenUtil().screenWidth * 0.030
               )),
           ],
         )),
         GestureDetector(
           onTap: (){
             controller.redirectToSearchScreen();
           },
           child:  Icon(
             Icons.search,
             color: kPrimaryGreen,
           ),
         )
       ],
     ),);
  }
}
class CategoryTab extends StatelessWidget{
   CategoryTab({
     Key? key,
    required this.categories,
    required this.controller}) : super(key: key);

  HomeScreenController controller;
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal:  ScreenUtil().setSp(16),
    ),child: Column(
       children: [
         Row(
           children: [
             Expanded(child: Text(
               'Categories',
               style:  Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: ScreenUtil().screenWidth * 0.040
               ),
             )),
             TextButton(onPressed: (){
                controller.redirectToCategory();
             }, child: const Text("See All"))
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children:
           List.generate(
             categories.length,
                 (index) => Expanded(child: CategoryCard(categories[index])),
           ),
         )
       ],
    ),);
  }
}
class CategoryCard extends StatelessWidget{
  final CategoryModel categoryModel;
  const CategoryCard(
      this.categoryModel,
      );

  @override
  Widget build(BuildContext context) {
     return
       Padding(padding: EdgeInsets.only(left: 10,right: 10),child:
       Column(
       children: [
         CircleAvatar(
           radius:  ScreenUtil().setSp(18),
           backgroundColor: categoryModel.color,
           child: SizedBox(
             width: ScreenUtil().setSp(20),
             child: Image.asset(
               categoryModel.catIcon,
               fit: BoxFit.cover,
             ),
           ),
         ),
         SizedBox(
           height: 5,
         ),
         Text(categoryModel.categoryName,style: TextStyle(fontSize: ScreenUtil().setSp(5)),)
       ],
     ));
  }
}
class DealCard extends StatelessWidget {
  final String vegiterianIcon;

  const DealCard( String this.vegiterianIcon, {
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: ScreenUtil().setSp(280),
      height: ScreenUtil().setSp(170),
      margin: EdgeInsets.only(
        left: ScreenUtil().setSp(16),
      ),
      decoration: ShapeDecoration(
        image: DecorationImage(image: AssetImage(vegiterianIcon),fit: BoxFit.fill),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            ScreenUtil().setSp(
              8,
            ),
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            kGradientColor,
            kGradientColor.withOpacity(0),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          ScreenUtil().setSp(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fresh Fruit for You',
              style: TextStyle(
                color: Colors.black,
                fontSize: ScreenUtil().setSp(20),
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Fresh fruit Everyday we Serve to You',
              style: TextStyle(
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}