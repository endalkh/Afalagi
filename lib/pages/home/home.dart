
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:delalaw/pages/drawer/navigation_drawer.dart';
import 'package:delalaw/pages/home/screen_clothes.dart';
import 'package:delalaw/pages/home/screen_home.dart';
import 'package:delalaw/pages/home/screen_shoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'card_categories.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  cat category = cat.all;

  List<Widget> screens = [ScreenHome(),ScreenShoes(),ScreenClothes()];
  Widget current = ScreenHome();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(context: context,title: "Delalaw"),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.all;
                        current = ScreenHome();

                      });
                    } ,cardColour: category == cat.all ? inactiveColor : Colors.white,
                        textColor: category == cat.all ? Colors.black : inactiveColor,
                        text: "All"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.shoes;
                        current = ScreenShoes();
                      });
                    } ,cardColour: category == cat.shoes ? inactiveColor : Colors.white,
                        textColor: category == cat.shoes ? Colors.black : inactiveColor,
                        text: "Shoes"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.clothes;
                        current = ScreenClothes();
                      });
                    } ,cardColour: category == cat.clothes ? inactiveColor : Colors.white,
                        textColor: category == cat.clothes ? Colors.black : inactiveColor,
                        text: "Clothes"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.Furniture;
                        current = ScreenClothes();
                      });
                    } ,cardColour: category == cat.Furniture ? inactiveColor : Colors.white,
                        textColor: category == cat.Furniture ? Colors.black : inactiveColor,
                        text: "Furnitures"),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: PageStorage(bucket: bucket, child: current)),
          )
        ],
      ),
      drawer: SideDrawer(),
    );
  }
}
enum cat {
  all,
  clothes,
  shoes,
  Furniture,
}
