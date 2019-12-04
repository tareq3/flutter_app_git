import 'dart:convert';

import 'package:flutter_app_git/strings.dart';
import 'package:http/http.dart';

import 'member.dart';

class GitApiProvider{


  Future<List<Member>> getMembers() async{
    Response response= await get(Strings.BaseURL+"members");

    if(response.statusCode==200){
      List<dynamic> body= jsonDecode(response.body);


      List<Member> members= body.map((item){
       return Member.fromJson(item);
      }).toList();
      return members;
    }else{
      throw 'Cant get the members';
    }
  }
}