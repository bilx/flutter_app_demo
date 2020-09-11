import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/common/resouce/images.dart';
import 'package:flutter_app_antrebate/common/resouce/strings.dart';
import 'package:flutter_app_antrebate/ui/ant/page/ant_home_page.dart';
import 'package:flutter_app_antrebate/ui/home/page/home_page.dart';
import 'package:flutter_app_antrebate/ui/user/page/personal_home_page.dart';

class IndexPage extends StatelessWidget {
  List<BottomNavigationBarItem> navigationList = [
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_home_default),
        activeIcon: Image.asset(Images.tabbar_home_selected),
        title: Text(Strings.tabbar_home_text)),
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_ziying_default),
        activeIcon: Image.asset(Images.tabbar_ziying_selected),
        title: Text(Strings.tabbar_ant_text)),
    BottomNavigationBarItem(
        icon: Image.asset(Images.tabbar_me_default),
        activeIcon: Image.asset(Images.tabbar_me_selected),
        title: Text(Strings.tabbar_me_text))
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
        onTap: (index) {

        },
      ),
      body: IndexedStack(index: currentIndex, children: tabBodies),
    );
  }
}
