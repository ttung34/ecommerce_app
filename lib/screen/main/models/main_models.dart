import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MainModels{
  home,
  mall, 
  live,
  video,
  notification,
  profile
}

extension MainModelExtension on MainModels{
  Widget get unselectedIcon{
    switch (this) {
      case MainModels.home:
        return SvgPicture.asset(
          'assets/icons/home_black.svg',
          height: 25,
          width: 25,
        );
      case MainModels.mall: 
        return SvgPicture.asset(
          'assets/icons/mall_black.svg',
          height: 25,
          width: 25,
        );
      case MainModels.live:
        return SvgPicture.asset(
          'assets/icons/live_black.svg',
          height: 25,
          width: 25,
        );
      case MainModels.video: 
        return SvgPicture.asset(
          'assets/icons/video_black.svg',
          height: 25,
          width: 25,
        );
      case MainModels.notification:
        return SvgPicture.asset(
          'assets/icons/notification_black.svg',
          height: 25,
          width: 25,
        );
      case MainModels.profile:
        return SvgPicture.asset(
          'assets/icons/profile_black.svg',
          height: 25,
          width: 25,
        );
    }
  }


  Widget get selectedIcon{
    switch (this) {
      case MainModels.home:
        return SvgPicture.asset(
          'assets/icons/home_red.svg',
          height: 25,
          width: 25,
        );
      case MainModels.mall: 
        return SvgPicture.asset(
          'assets/icons/mall_red.svg',
          height: 25,
          width: 25,
        );
      case MainModels.live:
        return SvgPicture.asset(
          'assets/icons/live_red.svg',
          height: 25,
          width: 25,
        );
      case MainModels.video: 
        return SvgPicture.asset(
          'assets/icons/video_red.svg',
          height: 25,
          width: 25,
        );
      case MainModels.notification:
        return SvgPicture.asset(
          'assets/icons/notification_red.svg',
          height: 25,
          width: 25,
        );
      case MainModels.profile:
        return SvgPicture.asset(
          'assets/icons/profile_red.svg',
          height: 25,
          width: 25,
        );
    }
  }
}