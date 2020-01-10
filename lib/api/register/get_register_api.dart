import 'dart:convert';
import 'dart:io';
import 'package:delalaw/api/register/register_post_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../API.dart';
Future<RegisterPost> registerPost(firstName,lastName,userId,password) async {
  http.Response response = await http.post(
    Uri.encodeFull(API()+"register"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: json.encode({
        "firstName":firstName,
        "lastName":lastName,
        "email": userId,
        "gender":"Male",
        "password": password,
      })
  );

  if (response.statusCode == 200) {
//    debugPrint('movieTitle:Result'+ response.body);

    return RegisterPost.getfromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }

}
