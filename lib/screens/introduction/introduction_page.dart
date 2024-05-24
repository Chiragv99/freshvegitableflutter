import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/widget/round_button.dart';
import '../../constants/colors.dart';
import 'introduction_controller.dart';

class IntroductionPage extends GetView<IntroductionController>{
   IntroductionPage({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Obx(() => Container(
        child: Column(
          children: [
            IllustrationPageView(_controller, controller.setPageCount),
            TextView(controller.pageCount.value),
          ],
        ),
      )
    ));
  }
}

class TextView extends StatelessWidget {
  final int pageCount;
   TextView(this.pageCount);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        'title': 'Fresh Vegetables',
        'desc':
        'Vegetables that are directly picked by farmers and guaranteed quality and freshness',
      },
      {
        'title': 'Easy Shopping',
        'desc':
        'Grab your items only need to order from home, click pay and wait for the courier to arrive',
      },
      {
        'title': 'Fast Delivery',
        'desc':
        'Courier will send the groceries you buy in just 1 day, very fast like a flash!',
      },
    ];
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const Spacer(),
            Text(
              data[pageCount]['title']!,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                color: kTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              data[pageCount]['desc']!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColorAccent,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(pageCount, 0),
                const SizedBox(
                  width: 8,
                ),
                PageIndicator(pageCount, 1),
                const SizedBox(
                  width: 8,
                ),
                PageIndicator(pageCount, 2),
              ],
            ),
            Spacer(),
            RoundedButton(
              isEnable: true,
              text: 'Get Started',
              fontSize: 10,
              onTap: () {
              },
              width: ScreenUtil().setSp(100),
              height: ScreenUtil().setSp(30),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator(this.pageCount, this.index);

  final int pageCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 300,
      ),
      width: pageCount == index
          ? 32
          : 8,
      height: 8,
      decoration: BoxDecoration(
        color: pageCount == index ? kPrimaryGreen : kFillColorPrimary,
        borderRadius: BorderRadius.circular(
         4,
        ),
      ),
    );
  }
}
class IllustrationPageView extends StatelessWidget {
  final controller;
  final Function(int) callback;

  const IllustrationPageView(
      this.controller,
      this.callback,
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        color: kAccentGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (pageNum) {
                  callback(pageNum);
                },
                children: [
                  Image.asset(
                    'assets/images/illu1.png',
                  ),
                  Image.asset(
                    'assets/images/illu2.png',
                  ),
                  Image.asset(
                    'assets/images/illu3.png',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}