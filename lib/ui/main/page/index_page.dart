import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/common/resouce/images.dart';
import 'package:flutter_app_antrebate/common/resouce/strings.dart';


class IndexPage extends StatelessWidget {


  List<BottomNavigationBarItem> navigationList = [
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_home_default),
        activeIcon: Image.asset(Images.tabbar_home_selected),
        title: Text(Strings.tabbar_home_text)
    ),
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_ziying_default),
        activeIcon: Image.asset(Images.tabbar_ziying_selected),
        title: Text(Strings.tabbar_ant_text)
    ),
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_me_default),
        activeIcon: Image.asset(Images.tabbar_me_selected),
        title: Text(Strings.tabbar_me_text)
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
