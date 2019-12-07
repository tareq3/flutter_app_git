import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app_git/myDio.dart';
import 'package:flutter_app_git/strings.dart';


import 'member.dart';

class GitApiProvider{

  final Dio _dio= MyDio.getDio();

  Future<List<Member>> getMembers() async{
    try {
      Response response= await _dio.get("/members");
      int status= response.statusCode;
      print(response);
    /*  if(response.statusCode==200){
       // List<dynamic> body= jsonDecode(response.data);


        List<Member> members= response.data.map((item){
          return Member.fromJson(item);
        }).toList();
        return members;
      }else{
        throw 'Cant get the members';
      }*/
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");

    }


  }
}