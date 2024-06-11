import 'package:ecommerce_app/screen/home/models/menu_models.dart';
import 'package:flutter/material.dart';

class MenuListViewItem extends StatelessWidget {
  const MenuListViewItem({
    required this.menuitem,
    super.key,
    });

  final MenuModels menuitem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(menuitem.title),
    );
  }
}