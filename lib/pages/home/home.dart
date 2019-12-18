import 'dart:math';

import 'package:addisaba_app/constants/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:addisaba_app/constants/constants.dart';
import 'package:addisaba_app/pages/widgets/custom_shape.dart';
import 'package:addisaba_app/pages/widgets/responsive_ui.dart';
//import 'package:addisaba_app/pages/widgets/textformfield.dart';
import 'package:material_search/material_search.dart';


class Home extends StatefulWidget {

  _HomeState createState() => new _HomeState();
}
class _HomeState extends State<Home>  with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



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

    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: CustomScrollView(

        slivers: <Widget>[

          SliverAppBar(

            expandedHeight: 200,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(

              title: Padding(

                padding: const EdgeInsets.only(
                  top: 70
                ),

                child: Card(

                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 8.0),

                  elevation: 6.0,
                  child: Image.asset('assets/images/adis2.png',fit: BoxFit.fitHeight,),

                )
              ),
              background:
              Image.asset("assets/images/imageedit_14_9446235158.png",
                fit: BoxFit.cover,
              ),


            ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Add new entry',
            onPressed: () {
              _showMaterialSearch(context);
            },
          ),

        ],


          ),
          SliverFillRemaining(

            child: Padding(
                padding: EdgeInsets.all(16.0),

child: Wrap(

children: <Widget>[

  Padding(
    padding: const EdgeInsets.all(5.0),

  ),
  Material(


    child: Wrap(

      runSpacing: 10,
        spacing: 10,
        children: <Widget>[

          ClipRRect(

            borderRadius: BorderRadius.circular(10),
            child:Material(
              color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HOME_CATAGORY);

                  },

            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.home,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),
            )
            ),
            )
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent,],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),

          ClipRRect(

            borderRadius: BorderRadius.circular(10),
            child: Align(

              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,

              child: Container(

                width: 60.0,
                height: 60.0,
                child: Icon(Icons.save,
                  color:Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
              ),




            ),

          ),

          ],

//        ),
      ),
    ),
  ])

            )







            ),

        ],
      ),
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(

                  currentAccountPicture: new CircleAvatar(

                    backgroundImage: new NetworkImage('https://www.cosy.sbg.ac.at/~pmeerw/Watermarking/lena_gray.gif'),
                  ),

                  accountName: new Text('Endalk Belete'),
                  accountEmail: new Text('Endalkhbel@gmail.com'),
                )
                  )


                ],

              ),
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.pinkAccent,Colors.orange[200]],
  )
),
         ),
  ListTile(
    title: Text('Saved'),
    leading: Icon(Icons.save),
    onTap: () {
      Navigator.pop(context);
    },
  ),
  ListTile(
    leading: Icon(Icons.gps_fixed),
    title: Text('Post NearBy'),
    onTap: () {
      Navigator.pop(context);
    },

  ),
  ListTile(
    leading: Icon(Icons.timeline),
    title: Text('My Post'),
    onTap: () {
      Navigator.pop(context);
    },

  ),

            Card(
              child: ListTile(
                title: Text('More',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),),
                dense: true,

              ),

            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('share'),
              onTap: () {
                Navigator.pop(context);
              },

            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Send Link'),
              onTap: () {
                Navigator.pop(context);
              },

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),

              onTap: () {
                Navigator.pop(context);
              },

            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),

              onTap: () {
                Navigator.pop(context);
              },

            ),

  ],
),
),

    );

  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery
        .of(context)
        .size
        .height;
    _width = MediaQuery
        .of(context)
        .size
        .width;
    _pixelRatio = MediaQuery
        .of(context)
        .devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      child: Container(
        height: _height,
        width: _width,
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[

              clipShape(),
//              welcomeTextRow(),
//              signInTextRow(),
//              form(),
//              forgetPassTextRow(),
//              SizedBox(height: _height / 12),
//              button(),
//              signUpTextRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget clipShape() {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height:_large? _height/4 : (_medium? _height/3.75 : _height/3.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large? _height/4.5 : (_medium? _height/4.25 : _height/4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
//        Container(
//          child: SizedBox.expand(child: RadialMenu()),
//
//        ),

      ],
    );

  }

}

