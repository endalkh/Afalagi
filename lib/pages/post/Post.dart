import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PostBlog extends StatefulWidget {
  @override
  _Post createState() => _Post();
}

class _Post extends State<PostBlog> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: headerNav(context: context,title: "Post"),
        body:Container(
        child:Text("hello"),
    ),
    );
  }
}

