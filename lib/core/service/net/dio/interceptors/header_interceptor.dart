import 'package:dio/dio.dart';

/// header拦截器
class HeaderInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    ///添加超时 60 秒
    options.connectTimeout = 60000;
    options.receiveTimeout = 60000;




    return options;
  }
}
