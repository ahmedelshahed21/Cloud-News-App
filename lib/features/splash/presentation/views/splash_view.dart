import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:news_cloud/core/utils/app_assets/app_assets.dart';
import 'package:news_cloud/features/home/presentation/views/home_view.dart';



class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Lottie.asset(AppAnimation.splashAnimation),
        backgroundColor: Colors.black,
        nextScreen: const HomeView(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 250,
        duration: 5000,
        animationDuration: const Duration(seconds: 3),
        //splashTransition: SplashTransition.rotationTransition,
      ),

    );

  }
}