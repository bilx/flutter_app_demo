import 'package:dio/dio.dart';
import 'package:flutter_app_antrebate/core/service/net/api/code.dart';
import 'package:flutter_app_antrebate/core/service/net/dio/interceptors/log_interceptor.dart';

import 'package:flutter_app_antrebate/core/service/net/result_data.dart';

import 'dart:collection';


import 'interceptors/error_interceptor.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/response_interceptor.dart';

///http请求
class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  Dio _dio = new Dio(); // 使用默认配置

  HttpManager() {
    _dio.interceptors.add(new HeaderInterceptors());

    //网络状态拦截器
    _dio.interceptors.add(new ErrorInterceptors(_dio));

    //响应拦截器
    _dio.interceptors.add(new ResponseInterceptors());

    //日志拦截器
    _dio.interceptors.add(LogsInterceptors());
  }

  ///发起网络请求
  ///[ url] 请求url
  ///[ params] 请求参数
  ///[ header] 外加头
  ///[ option] 配置 请求方式等，默认 get请求
  Future<ResultData> netFetch(url,
      {params,
      Map<String, dynamic> header,
      Options option,
      noTip = false}) async {
    Map<String, dynamic> headers = new HashMap();
    if (header != null) {
      headers.addAll(header);
    }

    if (option != null) {
      option.headers = headers;
    } else {
      option = new Options(method: "get");
      option.headers = headers;
    }

    resultError(DioError e) {
      Response errorResponse;
      if (e.response != null) {
        errorResponse = e.response;
      } else {
        errorResponse = new Response(statusCode: 666);
      }
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        errorResponse.statusCode = Code.NETWORK_TIMEOUT;
      }
      return new ResultData(
          Code.errorHandleFunction(errorResponse.statusCode, e.message, noTip),
          false,
          errorResponse.statusCode);
    }

    Response response;
    try {
      response = await _dio.request(url, data: params, options: option);
    } on DioError catch (e) {
      return resultError(e);
    }
    if (response.data is DioError) {
      return resultError(response.data);
    }
    return response.data;
  }
}

final HttpManager httpManager = new HttpManager();
