
import 'package:addisaba_app/pages/widgets/custom_shape.dart';
import 'package:addisaba_app/pages/widgets/responsive_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  _SideDrawer createState() => _SideDrawer();
}

class _SideDrawer extends State<SideDrawer>{
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
    // TODO: implement build
    return  navigationDrawer();
  }

  Widget navigationDrawer(){
    return
      Drawer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween,
              children: <Widget>[
                Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          height: 300.0,
                          child: Stack(
                            children: <Widget>[
                              clipShape(),
                              Padding(
                                child: UserAccountsDrawerHeader(

                                    accountName:Padding(
                                      child: Row(

                                        children: <Widget>[
                                          Text("Endalk Belete",style: TextStyle(color: Colors.white,fontSize: 15),),
                                          IconButton(
                                            icon: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(top: 10),
                                    ) ,
                                    accountEmail: Text("Endalkbel@gmail.com", style:TextStyle(color: Colors.white,fontSize: 15),),
                                    currentAccountPicture:Padding(
                                      padding: const EdgeInsets.only(
                                        top: 0,
                                      ),
                                      child:CircleAvatar(
                                          backgroundColor:Colors.white,
                                          child: Image.asset('assets/images/adis2.png',

                                              fit:BoxFit.fill
                                          )
                                      ),
                                    )

                                ),
                                padding: const EdgeInsets.all(40),

                              )

                            ],
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

                        Divider(thickness: 2,),

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
                    )

                ),
              ])

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
              height:_large? _height/4 : (_medium? _height : _height),
              decoration: BoxDecoration(
                gradient: LinearGradient(
//                  colors: [Colors.orange[200], Colors.pinkAccent],
                    colors: [Colors.black,Colors.blue]
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
              height: _large? _height : (_medium? _height : _height),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black,Colors.blue]
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

