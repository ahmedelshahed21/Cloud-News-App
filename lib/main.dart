import 'package:flutter/material.dart';
import 'package:news_cloud/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
    MaterialApp (
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    )
  );
}
