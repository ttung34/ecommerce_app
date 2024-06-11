import 'package:ecommerce_app/screen/home/widget/home_screen.dart';
import 'package:ecommerce_app/screen/live/live_screen.dart';
import 'package:ecommerce_app/screen/main/models/main_models.dart';
// ignore: unused_import
import 'package:ecommerce_app/screen/home/widget/app_bar_home.dart';
import 'package:ecommerce_app/screen/main/widget/main_bottom_navigation.dart';
import 'package:ecommerce_app/screen/mall/mall_screen.dart';
import 'package:ecommerce_app/screen/notification/notification_screen.dart';
import 'package:ecommerce_app/screen/profile/profile_screen.dart';
import 'package:ecommerce_app/screen/video/video_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  MainModels selectedMainModels = MainModels.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildbody(),
      // ignore: prefer_const_constructors
      bottomNavigationBar: MainBottomNavigation(
        selectedMainModels: selectedMainModels,
        onTap: (MainModels value) { 
          // ignore: avoid_print, unnecessary_brace_in_string_inters, unnecessary_brace_in_string_interps
          print("value: `${value}`");
          setState(() {
            selectedMainModels = value;
          });
         },
      ),
    );
  }

  Widget _buildbody(){
    switch(selectedMainModels){
      case MainModels.home: 
        // ignore: prefer_const_constructors
        return HomeScreen();
      case MainModels.mall: 
        // ignore: prefer_const_constructors
        return MallScreen();
      case MainModels.live: 
        // ignore: prefer_const_constructors
        return LiveScreen();
      case MainModels.video: 
        // ignore: prefer_const_constructors
        return VideoScreen();
      case MainModels.notification: 
        // ignore: prefer_const_constructors
        return NotificationScreen();
      case MainModels.profile: 
        // ignore: prefer_const_constructors
        return ProfileScreen();
    }
  }
}