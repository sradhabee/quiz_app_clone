import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



import 'package:quiz_app_clone/utils/animation_constants.dart';
import 'package:quiz_app_clone/view/category_screen/category_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.pushReplacement(context,
    
     MaterialPageRoute(builder: (context) =>CategoryScreen(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(AnimationConstants.splash_logo),
      ),
    );
  }
}