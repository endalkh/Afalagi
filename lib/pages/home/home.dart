import 'package:addisaba_app/pages/bgColor/background.dart';
import 'package:addisaba_app/pages/buttonColor/Button.dart';
import 'package:addisaba_app/pages/drawer/navigation_drawer.dart';
import 'package:addisaba_app/pages/search/Search.dart';
import 'package:addisaba_app/slider/Slider.dart';
import 'package:flutter/material.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: CustomScrollView(

        slivers: <Widget>[

          new SliverAppBar(


            expandedHeight: MediaQuery.of(context).size.height/2.5,

            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(

              background: SlidingCardsView(),




              ),

actions: <Widget>[
  new IconButton(
    onPressed: () {
      Search(context);
    },
    tooltip: 'Search',
    icon: new Icon(Icons.search),
  )
],
            ),

          SliverToBoxAdapter(

            child: Container(
          decoration: BoxDecoration(

gradient: LinearGradient(
  colors: [
    Colors.black45,
    Colors.black54]
),
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                fit: BoxFit.cover,

                image: AssetImage("assets/images/imageedit_14_9446235158.png"),
              )
          ),

child: Wrap(

children: <Widget>[
//  Background.clipShape(context),

  Material(
color: Colors.transparent.withOpacity(0.0),
borderRadius: BorderRadius.circular(25),

    child: Wrap(
        children: <Widget>[

          Padding(
    padding: const EdgeInsets.all(10),
         child:Container(
            decoration: BoxDecoration(
              border: Border.all(color:Colors.black, width:1),
              borderRadius: BorderRadius.circular(27),
              color: Colors.white.withOpacity(0.3),

//              border:
            ),
            child:ClipRRect(
                borderRadius: BorderRadius.circular(40),

                child:Wrap(
                  children: <Widget>[
//                Button.clipShape(context),
                    Align(
                      alignment: Alignment.center,
                      heightFactor: 1,
                      widthFactor: 1,

                      child: Container(

                          width: 90.0,
                          height: 90.0,
                          child:Column(

                            children: <Widget>[
                              Icon(Icons.share,
                                color: Colors.white,
                                size: 60,

                              ),
                              Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )

                      ),




                    ),


                  ],
                )

            ),

          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black, width:1),
                borderRadius: BorderRadius.circular(27),
                color: Colors.white.withOpacity(0.3),

//              border:
              ),
              child:ClipRRect(
                  borderRadius: BorderRadius.circular(40),

                  child:Wrap(
                    children: <Widget>[
//                Button.clipShape(context),
                      Align(
                        alignment: Alignment.center,
                        heightFactor: 1,
                        widthFactor: 1,

                        child: Container(

                            width: 90.0,
                            height: 90.0,
                            child:Column(

                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,
                                  size: 60,

                                ),
                                Text("Endalk",style: TextStyle(fontSize: 17,color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )

                        ),




                      ),


                    ],
                  )

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
      drawer:SideDrawer(),

    );

  }
}
