import 'package:ecommerce_app/screen/main/main_screen.dart';
import 'package:flutter/material.dart';

class ShopHouse extends StatelessWidget {
  const ShopHouse({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
     // ignore: prefer_const_constructors
     home: MainScreen(),
     debugShowCheckedModeBanner: false,
    );
  }
}