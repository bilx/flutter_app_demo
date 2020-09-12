import 'package:flutter/material.dart';

class BottomNavItemView {
  final String icon;
  final String activeIcon;
  final String title;

  final double iconSize = 24;

  BottomNavItemView({this.icon, this.activeIcon, this.title});

  BottomNavigationBarItem build() {
    return BottomNavigationBarItem(
        icon: Image.asset(
          icon,
          width: iconSize,
          height: iconSize,
        ),
        activeIcon: Image.asset(
          activeIcon,
          width: iconSize,
          height: iconSize,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 11),
        ));
  }
}
