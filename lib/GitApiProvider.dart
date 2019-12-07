import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_git/myDio.dart';
import 'package:flutter_app_git/strings.dart';

import 'Member.dart';

class GitApiProvider {
  final Dio _dio = MyDio.getDio();

  Future<List<Member>> getMembers() async {
    try {
      Response response = await _dio.get("/members");

      if (response.statusCode == 200) {
        //Here this is very important, thought we know response.data is a list, Still we need to add "as list "
        return (response.data as List)
            .map((item) => Member.fromJson(item))
            .toList();
      } else {
        throw 'Cant get the members';
      }
    } catch (error, stacktrace) {
      print("Exception occured: ${error} stackTrace: $stacktrace");
    }
  }
}
