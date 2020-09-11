import 'package:dio/dio.dart';

import 'package:flutter_app_antrebate/core/service/net/api/path.dart';
import 'dart:convert';

import 'package:flutter_app_antrebate/core/service/net/dio/http_request.dart';

class AppRepository {
  //获取首页数据
  static homeIndex() async {
    var res = await httpManager.netFetch(Path.HomeIndex,
        option: Options(method: "POST"));

    print("AppRepository data = ${res.data}");

    //请求成功
    if (res != null && res.result) {}
  }
}
