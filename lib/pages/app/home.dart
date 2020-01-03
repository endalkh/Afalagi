//import 'package:delalaw/constants/constants.dart';
//import 'package:delalaw/pages/app/homeCatagory/home.dart';
//import 'package:delalaw/pages/drawer/navigation_drawer.dart';
//import 'package:delalaw/pages/search/Search.dart';
//import 'package:delalaw/slider/Slider.dart';
//import 'package:flutter/material.dart';
//
//class Home extends StatefulWidget {
//
//  _HomeState createState() => new _HomeState();
//}
//class _HomeState extends State<Home>  with SingleTickerProviderStateMixin {
//  AnimationController _controller;
//
//  @override
//  void initState() {
//    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 900));
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      resizeToAvoidBottomPadding: false,
//
//      body: CustomScrollView(
//
//        slivers: <Widget>[
//
//          new SliverAppBar(
//
//
//            expandedHeight: MediaQuery.of(context).size.height/2.5,
//
//            pinned: true,
//            flexibleSpace: new FlexibleSpaceBar(
//
//             background: SlidingCardsView(),
//
//
//
//
//              ),
//
//actions: <Widget>[
//  notify(),
//  new IconButton(
//    onPressed: () {
//      Search(context);
//    },
//    tooltip: 'Search',
//    icon: new Icon(Icons.search),
//  ),
//
//
//],
//            ),
//
//          SliverToBoxAdapter(
//
//            child: Container(
//          decoration: BoxDecoration(
//
//gradient: LinearGradient(
//  colors: [
//    Colors.black45,
//    Colors.black54]
//),
//              image: DecorationImage(
//                alignment: Alignment.center,
//                matchTextDirection: true,
//                repeat: ImageRepeat.noRepeat,
//                fit: BoxFit.cover,
//                image: AssetImage("assets/images/bgHome3.jpg"),
//              )
//          ),
//
//child: Wrap(
//
//children: <Widget>[
import 'package:delalaw/pages/drawer/navigation_drawer.dart';
////  Background.clipShape(context),
//
//  Material(
//color: Colors.transparent.withOpacity(0.0),
//borderRadius: BorderRadius.circular(25),
//
//    child: Wrap(
//        children: <Widget>[
//
//          InkWell(
//    onTap: () {
//      Navigator.pushNamed(context, HOME_CATAGORY);
//    },
//
//          child:Padding(
//    padding: const EdgeInsets.all(10),
//         child:Container(
//            decoration: BoxDecoration(
//              border: Border.all(color:Colors.black, width:1),
//              borderRadius: BorderRadius.circular(27),
//              color: Colors.white.withOpacity(0.3),
//
////              border:
//            ),
//            child:ClipRRect(
//                borderRadius: BorderRadius.circular(40),
//
//                child:Wrap(
//                  children: <Widget>[
////                Button.clipShape(context),
//                    Align(
//                      alignment: Alignment.center,
//                      heightFactor: 1,
//                      widthFactor: 1,
//
//                      child: Container(
//
//                          width: 90.0,
//                          height: 90.0,
//                          child:Column(
//
//                            children: <Widget>[
//                              Icon(Icons.computer,
//                                color: Colors.white,
//                                size: 60,
//
//                              ),
//                              Text("PC",style: TextStyle(fontSize: 17,color: Colors.white),
//                                textAlign: TextAlign.center,
//                              )
//                            ],
//                          )
//
//                      ),
//
//
//
//
//                    ),
//
//
//                  ],
//                )
//
//            ),
//
//          ),
//          ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(10),
//            child:Container(
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black, width:1),
//                borderRadius: BorderRadius.circular(27),
//                color: Colors.white.withOpacity(0.3),
//
////              border:
//              ),
//              child:ClipRRect(
//                  borderRadius: BorderRadius.circular(40),
//
//                  child:Wrap(
//                    children: <Widget>[
////                Button.clipShape(context),
//                      Align(
//                        alignment: Alignment.center,
//                        heightFactor: 1,
//                        widthFactor: 1,
//
//                        child: Container(
//
//                            width: 90.0,
//                            height: 90.0,
//                            child:Column(
//
//                              children: <Widget>[
//                                Icon(Icons.share,
//                                  color: Colors.white,
//                                  size: 60,
//
//                                ),
//                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                )
//                              ],
//                            )
//
//                        ),
//
//
//
//
//                      ),
//
//
//                    ],
//                  )
//
//              ),
//
//            ),
//          ),
//
//        ],
//
////        ),
//      ),
//    ),
//  ])
//
//            )
//
//
//            ),
//
//        ],
//      ),
//      drawer:SideDrawer(),
//
//    );
//
//  }
//  notify(){
//    return Stack(
//      children: <Widget>[
//
//         IconButton(
//          onPressed: () {
//            Navigator.pushNamed(context, NOTIFIACTION_SCREEN);
//          },
//          tooltip: 'notification',
//          icon: new Icon(Icons.notifications),
//
//        ),
//        Positioned(
//            child: new Stack(
//              children: <Widget>[
//                Icon(
//                  Icons.brightness_1,
//                  size: 20.0, color: Colors.red,
//                ),
//                Positioned(
//                    top: 3.0,
//                    right: 4.0,
//                    child: new Center(
//                      child: new Text(
//                        "10",
//                        style: new TextStyle(
//                            color: Colors.white,
//                            fontSize: 11.0,
//                            fontWeight: FontWeight.w500
//                        ),
//                      ),
//                    )),
//
//
//              ],
//            )),
//
//      ],
//    );
//  }
//
//}
import 'package:delalaw/slider/Slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/Asserts.dart' as assets;

class Home extends StatelessWidget {
  static final String path = "lib/src/pages/misc/sliver_appbar.dart";
  final List<String> images = [assets.images[0],assets.backgroundImages[0],assets.images[1],assets.images[2], assets.images[3],assets.images[4],assets.backgroundImages[1],assets.images[5]];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,

              expandedHeight: 200.0,
              pinned: true,
              flexibleSpace: SlidingCardsView(),
//              FlexibleSpaceBar(
//                title: Text('Welcome To Shop'),
//                background: PNetworkImage(assets.images[1], fit: BoxFit.cover),
//              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  tooltip: 'Favorites',
                  onPressed: () { /* ... */ },
                ),
              ],

          ),
          SliverToBoxAdapter(

            child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(onPressed: (){},child: Text("Catagory".toUpperCase(),style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ))),
                      MaterialButton(onPressed: (){},child: Text("choose your Catagory".toUpperCase(),style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ))),
                    ],
                  ),
                )
            ),
          ),

//    SliverToBoxAdapter(
//    child: Container(
//    height: 600.0,
//    child: ListView.builder(
//    scrollDirection: Axis.vertical,
//    itemCount: 10,
//    itemBuilder: (context, index) {
//      return _buildListItem(index);
//    }
//    ),
//    ),
//    ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildListItem(index);
              },
              childCount: 30,//images.length,

            ),
          )
        ],
      ),
      drawer: SideDrawer(),
    );
  }

   _buildListItem(int index) {
    return Container(
        height: 100,
        child: Card(
          child: Center(
            child: ListTile(
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

}