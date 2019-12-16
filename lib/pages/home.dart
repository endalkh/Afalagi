import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:material_search/material_search.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'home';
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _names =  [
    'Igor Minar',
    'Brad Green',
    'Dave Geddes',
    'Naomi Black',
    'Greg Weber',
    'Dean Sofer',
    'Wes Alvaro',
    'John Scott',
    'Daniel Nadasi',
  ];

  String _name = 'No one';

  final _formKey = new GlobalKey<FormState>();

  _buildMaterialSearchPage(BuildContext context) {
    return new MaterialPageRoute<String>(
        settings: new RouteSettings(
          name: 'material_search',
          isInitialRoute: false,
        ),
        builder: (BuildContext context) {
          return new Material(
            child: new MaterialSearch<String>(
              placeholder: 'Search',
              results: _names.map((String v) => new MaterialSearchResult<String>(
                icon: Icons.person,
                value: v,
                text: "Mr(s). $v",
              )).toList(),
              filter: (dynamic value, String criteria) {
                return value.toLowerCase().trim()
                    .contains(new RegExp(r'' + criteria.toLowerCase().trim() + ''));
              },
              onSelect: (dynamic value) => Navigator.of(context).pop(value),
              onSubmit: (String value) => Navigator.of(context).pop(value),
            ),
          );
        }//        primarySwatch: Colors.blue,
    );
  }

  _showMaterialSearch(BuildContext context) {
    Navigator.of(context)
        .push(_buildMaterialSearchPage(context))
        .then((dynamic value) {
      setState(() => _name = value as String);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

    length: 3,
    child: Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: new AppBar(

        backgroundColor: Colors.teal,
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
            onPressed: () {
              _showMaterialSearch(context);
            },
            tooltip: 'Search',
            icon: new Icon(Icons.search),
          )
        ],

  bottom: TabBar(
    tabs: <Widget>[

      Tab(
        text: 'tab 1',
      ),
      Tab(
        text: 'tab 12',
      ),
      Tab(
        text: 'tab 12',
      )
    ],
  ),
      ),

      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[

                  new UserAccountsDrawerHeader(

                    accountName: new Text('Endalk Belete'),
                    accountEmail: new Text('Endalkhbel@gmail.com'),
                    currentAccountPicture: new CircleAvatar(
                      backgroundImage: new NetworkImage('https://miro.medium.com/max/1400/1*uC0kYhn8zRx8Cfd0v0cYQg.jpeg'),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.4,
                        0.6,
                        0.9
                      ],
                      colors: [
                        Colors.yellow,
                        Colors.red,
                        Colors.indigo,
                        Colors.teal
                      ])),
            ),
            ListTile(
              title: Text('Item 1'),
                leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },

            ),

          ],

        ),

      ),

            bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.notification_important, size: 30),
          Icon(Icons.camera, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.chat, size: 30),

        ],
        onTap: (index) {
          //Handle button tap
        },

      ),
//      floatingActionButton: new FloatingActionButton(
//        backgroundColor: Colors.teal,
//        onPressed: () {
//          _showMaterialSearch(context);
//        },
//        tooltip: 'Search',
//        child: new Icon(Icons.search),
//      ),
    body: Center(
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.greenAccent,Colors.blueAccent])),
    child: Center(
    child: Text(
    'Delalaw!',
    style: TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.white),
    ),
    ),
    )
    )
      ,
    )
    );

  }
}