import 'package:ecommerce_app/screen/main/models/main_models.dart';
import 'package:flutter/material.dart';

class MainBottomNavigation extends StatelessWidget {
  const MainBottomNavigation({
  super.key, 
  // ignore: always_put_required_named_parameters_first
  required this.selectedMainModels,
  required this.onTap,
  });

  final MainModels selectedMainModels;
  

  final ValueChanged <MainModels>onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int indexOnTap) {
        _onTap(index: indexOnTap);
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        _bottomNavigationBarItem(selectedMain: MainModels.home),
        _bottomNavigationBarItem(selectedMain: MainModels.mall),
        _bottomNavigationBarItem(selectedMain: MainModels.live),
        _bottomNavigationBarItem(selectedMain: MainModels.video),
        _bottomNavigationBarItem(selectedMain: MainModels.notification),
        _bottomNavigationBarItem(selectedMain: MainModels.profile),
      ],
    );
  }

  // ignore: lines_longer_than_80_chars, prefer_expression_function_bodies
  BottomNavigationBarItem _bottomNavigationBarItem ({required MainModels selectedMain }){
    return BottomNavigationBarItem(
      icon:Padding(
        padding: const EdgeInsets.only(top: 10),
       child: selectedMainModels == selectedMain
      ? selectedMain.selectedIcon
      : selectedMain.unselectedIcon,
      ),
      label: ''
    // ignore: require_trailing_commas
    );
  }

  void _onTap({required int index}) {
    // ignore: unrelated_type_equality_checks
    if(index == MainModels.home.index){
      onTap.call(MainModels.home);
    }else if (index == MainModels.mall.index){
      onTap.call(MainModels.mall);
    }else if (index == MainModels.live.index){
      onTap.call(MainModels.live);
    }else if (index == MainModels.video.index){
      onTap.call(MainModels.video);
    }else if (index == MainModels.notification.index){
      onTap.call(MainModels.notification);
    }else if (index == MainModels.profile.index){
      onTap.call(MainModels.profile);
    }
  }
}