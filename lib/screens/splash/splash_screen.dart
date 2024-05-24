import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlineshoppingsample/screens/splash/splash_controller.dart';
import '../../constants/colors.dart';



class SlashPage extends GetView<SplashController>{
  const SlashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       body: SafeArea(
       child:
       Container(
         decoration: const BoxDecoration(
         image: DecorationImage(
         image: AssetImage('assets/images/landing.png'), fit: BoxFit.cover)),
         child:  Column(
           children: [
             Spacer(),
             Padding(padding: EdgeInsets.only(bottom: 30),child: getIntroductionScreenWidget(context,controller)),
           ],
         )
       ))
     );
  }
}
Widget getIntroductionScreenWidget(BuildContext context, SplashController controller){
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(
      horizontal: 20
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Welcome to Veggie Fresh',
  style: Theme.of(context).textTheme.displaySmall!.copyWith(
  color: kTextColor,
  fontWeight: FontWeight.w600,
  ),
  ),
  const SizedBox(height:  30),
  Text(
  'We have more than 10,000+ food available for all of you.',
  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
  color: kTextColorAccent,
  ),
  ),
  const SizedBox(height: 40),
  ElevatedButton(
  onPressed: () {
    controller.redirectToIntroScreen();
  },
  child: const Text('Get Started'),
  ),
  ],
  ),
  )
  );
}