import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/locator.dart';
import 'package:flutter_app_antrebate/ui/main/page/index_page.dart';

void main() {
  //注入初始化
  setupLocator();
  //启动app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '蚂蚁',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: IndexPage());
  }
}
