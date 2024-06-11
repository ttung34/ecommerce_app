import 'package:ecommerce_app/screen/home/models/menu_models.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';

import 'package:ecommerce_app/screen/home/widget/menu/menu_list_view.dart';


class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  // ignore: unused_field
  static const List<MenuModels> menulists = <MenuModels>[
    MenuModels(
      title: 'Video',
      icons: 'assets/icons/video_black.svg',
    ),
    MenuModels(
      title: 'Food',
      icons: 'assets/icons/food.svg',
    ),
    MenuModels(
      title: 'Mall',
      icons: 'assets/icons/mall_black.svg',
    ),
    MenuModels(
      title: 'Choice',
      icons: 'assets/icons/choice.svg',
    ),
    MenuModels(
      title: 'Free Ship',
      icons: 'assets/icons/car.svg',
    ),
    MenuModels(
      title: 'Sale',
      icons: 'assets/icons/sale.svg',
    ),
    MenuModels(
      title: 'Fashion',
      icons: 'assets/icons/fashion.svg',
    ),
    MenuModels(
      title: 'Beauty',
      icons: 'assets/icons/beauty.svg',
    ),
    MenuModels(
      title: 'International',
      icons: 'assets/icons/earth.svg',
    ),
    MenuModels(
      title: 'Card service',
      icons: 'assets/icons/phone.svg',
    ),
    MenuModels(
      title: 'Coin hunting',
      icons: 'assets/icons/box.svg',
    ),
    MenuModels(
      title: 'Premium',
      icons: 'assets/icons/premium.svg',
    ),
    MenuModels(
      title: 'Later',
      icons: 'assets/icons/wallet.svg',
    ),
    MenuModels(
      title: 'Close to you',
      icons: 'assets/icons/drop.svg',
    ),
    MenuModels(
      title: 'Member incentives',
      icons: 'assets/icons/user_setting.svg',
    ),
    MenuModels(
      title: 'Electronic',
      icons: 'assets/icons/desktop.svg',
    ),

  ];

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      // ignore: prefer_const_constructors
      child:Column(
        // ignore: always_specify_types, prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          MenuListView(menulists: menulists),
        ],
      ),
    );
  }
}