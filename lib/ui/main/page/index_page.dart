import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/common/resouce/images.dart';
import 'package:flutter_app_antrebate/common/resouce/strings.dart';
import 'package:flutter_app_antrebate/core/view/base_view.dart';
import 'package:flutter_app_antrebate/ui/ant/page/ant_home_page.dart';
import 'package:flutter_app_antrebate/ui/home/page/home_page.dart';
import 'package:flutter_app_antrebate/ui/main/viewmodel/index_view_model.dart';
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



  @override
  Widget build(BuildContext context) {
    return BaseView<IndexViewModel>(
        builder: (context, model, child) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: model.currentIndex,
                items: navigationList,
                onTap: (index) {
                  model.changeIndex(index);
                },
              ),
              body:
                  IndexedStack(index: model.currentIndex, children: tabBodies),
            ));
  }
}
