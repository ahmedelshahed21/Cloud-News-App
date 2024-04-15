import 'package:flutter/material.dart';
import 'package:news_app/features/presentation/views/home_view.dart';


void main() {
  runApp(
    const MaterialApp (
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    )
  );
}
