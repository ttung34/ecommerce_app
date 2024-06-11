// ignore_for_file: public_member_api_docs

import 'package:ecommerce_app/screen/home/widget/menu/menu_list_view_item.dart';
import 'package:flutter/material.dart';

// ignore: always_use_package_imports, unused_import
import '../../models/menu_models.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({
    required this.menulists,
    super.key,
    });

  final List<MenuModels> menulists;

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      // ignore: prefer_expression_function_bodies
      itemBuilder: (BuildContext context, int index){
        // ignore: prefer_const_constructors
        return MenuListViewItem(menuitem: menulists[index]);
      }, 
      separatorBuilder: (BuildContext context, int index){
        // ignore: prefer_const_constructors
        return SizedBox(
          width: 25,
        );
      }, 
      itemCount: 4,
    );
  }
}