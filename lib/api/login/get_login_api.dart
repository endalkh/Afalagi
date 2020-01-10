import 'dart:convert';
import 'dart:io';

import 'package:delalaw/api/login/login_post_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../API.dart';
Future<LoginPost> checkLoginPost(userId,password) async {
  http.Response response = await http.post(
    Uri.encodeFull(API()+"login"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: json.encode({
        "email": userId,
        "password": password,
      })
  );

  if (response.statusCode == 200) {
    debugPrint('movieTitle:Result'+ response.body);

    return LoginPost.getfromJson(json.decode(response.body));
  } else {

    throw Exception(response.body);
  }

}
