import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/common/resouce/images.dart';
import 'package:flutter_app_antrebate/common/resouce/strings.dart';
import 'package:flutter_app_antrebate/ui/ant/page/ant_home_page.dart';
import 'package:flutter_app_antrebate/ui/home/page/home_page.dart';
import 'package:flutter_app_antrebate/ui/main/widget/bottom_nav_item_view.dart';
import 'package:flutter_app_antrebate/ui/user/page/personal_home_page.dart';

class IndexPage extends StatelessWidget {
  List<BottomNavigationBarItem> navigationList = [
    BottomNavItemView(
            title: Strings.tabbar_home_text,
            icon: Images.tabbar_home_default,
            activeIcon: Images.tabbar_home_selected)
        .build(),
    BottomNavItemView(
            icon: Images.tabbar_ziying_default,
            activeIcon: Images.tabbar_ziying_selected,
            title: Strings.tabbar_ant_text)
        .build(),
    BottomNavItemView(
            icon: Images.tabbar_me_default,
            activeIcon: Images.tabbar_me_selected,
            title: Strings.tabbar_me_text)
        .build()
  ];

  final List<Widget> tabBodies = [
    HomePage(),
    AntHomePage(),
    PersonalHomePage()
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: navigationList,
        onTap: (index) {},
      ),
      body: IndexedStack(index: currentIndex, children: tabBodies),
    );
  }
}
