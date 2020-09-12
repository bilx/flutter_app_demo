import 'package:flutter/material.dart';

import 'package:flutter_app_antrebate/core/service/net/repository/app_repository.dart';
import 'package:flutter_app_antrebate/ui/main/page/index_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: IndexPage());
  }
}
