import 'dart:convert';
import 'dart:io';
import 'package:delalaw/api/post/register_post_class.dart';
import 'package:delalaw/api/register/register_post_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../API.dart';
Future<PostBlog> registerBlog(firstName,lastName,userId,password) async {
  http.Response response = await http.post(
    Uri.encodeFull(API()+"post"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: json.encode({
        "title":firstName,
        "location":lastName,
        "catagory": userId,
        "gender":"Male",
        "password": password,
      })
  );
  if (response.statusCode == 200) {
//    debugPrint('movieTitle:Result'+ response.body);

    return PostBlog.getfromJson(json.decode(response.body));
  } else {
//    debugPrint( response.body);
//    data = json.decode(response.body);
//      userData = response.body["error"];

    throw Exception(response.body);
  }

}
