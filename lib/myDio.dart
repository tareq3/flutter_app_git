/*
 * Created by Tareq Islam on 12/7/19 1:22 PM
 *
 *  Last modified 12/7/19 1:22 PM
 */

import 'package:dio/dio.dart';

import 'strings.dart';

class MyDio {


// or new Dio with a BaseOptions instance.
 static BaseOptions options = new BaseOptions(
    baseUrl: Strings.BaseURL,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );


  static Dio getDio(){
    return new Dio(options);;
  }
}