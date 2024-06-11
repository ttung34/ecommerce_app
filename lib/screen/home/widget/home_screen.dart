import 'package:ecommerce_app/screen/home/widget/app_bar_home.dart';
import 'package:ecommerce_app/screen/home/widget/bar/bar.dart';
import 'package:ecommerce_app/screen/home/widget/bar/tesst.dart';
import 'package:ecommerce_app/screen/home/widget/carousel_slide/carousel_slide.dart';
import 'package:ecommerce_app/screen/home/widget/deal/deal_main.dart';
// ignore: unused_import
import 'package:ecommerce_app/screen/home/widget/menu/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
        appBar: AppBarMain(),
              // ignore: prefer_const_constructors
              body: Container(
                // ignore: prefer_const_constructors
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // ignore: prefer_const_constructors
                        Column(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              child: CarouselSlide(),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(
                              child: ShopeePayWidget(),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(
                              // ignore: prefer_const_constructors
                              child: DealMain(),
                            ),
                            
                            // ignore: prefer_const_constructors
                          ],
                        )
                      ],
                    ),
                  ],
                  // ignore: prefer_const_constructors
          ),
        ),
    );
  }
}