import 'package:addisaba_app/constants/constants.dart';
import 'package:addisaba_app/pages/search/Search.dart';
import 'package:flutter/material.dart';

AppBar headerNav({context,String title}){
  return AppBar(
    title: Text(title),
          actions: <Widget>[
        new IconButton(
          onPressed: () {
            Search(context);
          },
          tooltip: 'Search',
          icon: new Icon(Icons.search),
        )
      ],
  );
}


