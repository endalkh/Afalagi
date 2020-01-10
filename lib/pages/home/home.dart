
import 'package:delalaw/constants/constants.dart';
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:delalaw/pages/drawer/navigation_drawer.dart';
import 'package:delalaw/pages/home/homeCatagory/home.dart';
import 'package:delalaw/slider/Slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/Asserts.dart' as assets;

class Home extends StatelessWidget {
  final List<String> images = [assets.images[0],assets.backgroundImages[0],assets.images[1],assets.images[2], assets.images[3],assets.images[4],assets.backgroundImages[1],assets.images[5]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: "Computers"),
      body:HomeCat(),
      drawer: SideDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{
          Navigator.pushNamed(context, POST),
        },
        child: Icon(Icons.add),
      ),
    );
  }
   iconCircle(Color color, String text, IconData icon) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            gradient: LinearGradient(
              colors: [Colors.white, color],
              stops: [0, 0.5],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
          child: Icon(
            icon,
            size: 40,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black87, fontSize: 11, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
   _buildListItem(int index,context) {
    return Container(
        height: 100,
        child: Card(
          child: Center(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, HOME_CATAGORY);
              },
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: CachedNetworkImageProvider(images[index%images.length]),
              ),
              title: Text('Top Quality of Computers', softWrap: true,),
              subtitle: Text('See Detail', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),),
            ),
          ),
        )
    );
  }



homeMenu(context) {
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    child: Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text(
                                    "Services",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: <Widget>[
                                      iconCircle(
                                          Color(0xFFff7bbd), "Send Money",
                                          Icons.attach_money),
                                      iconCircle(Color(0xFF6db4e0), "Accounts",
                                          Icons.account_box),
                                      iconCircle(
                                          Color(0xFFc4a1ff), "Global Payments",
                                          Icons.payment),
                                      iconCircle(
                                          Color(0xFF4cd1fe), "Scheduled",
                                          Icons.schedule),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: <Widget>[
                                      iconCircle(
                                          Color(0xFF93dfdf), "Up Coming",
                                          Icons.update),
                                      iconCircle(
                                          Color(0xFFfeb885), "Statement",
                                          Icons.store),
                                      iconCircle(
                                          Color(0xFFfeb0d8), "History",
                                          Icons.history),
                                      iconCircle(
                                          Color(0xFF5788f1), "Management",
                                          Icons.settings),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]
          )
      ),
    ),
  );
}
}