//      drawer: Theme(
//      data: Theme.of(context).copyWith(
//    canvasColor: Colors.transparent,
//    primaryColor: Colors.transparent,
//
//    primaryColorBrightness: Brightness.dark,
//    ),
//      child: Drawer(
//        child: (ListView(
//          padding: EdgeInsets.all(10.0),
//          children: <Widget>[
//             Container(
//              padding: EdgeInsets.all(10.0),
//
//              child: UserAccountsDrawerHeader(
//                currentAccountPicture: CircleAvatar(
//                    backgroundImage: new NetworkImage('https://www.cosy.sbg.ac.at/~pmeerw/Watermarking/lena_gray.gif'),
//                    backgroundColor: Color.fromRGBO(255, 244, 200, 0.1)),
//                accountName: Text('Endalk Belete'),
//                accountEmail: Text('endalkhbel@gmail.com'),
//
//              ),
//            ),
//
//          ],
//        )
//    ),
//height: MediaQuery.of(context).size.height/6,
//child: ListView.builder(
//primary: false,
//scrollDirection: Axis.horizontal,
//shrinkWrap: true,
//itemCount: categories == null ? 0:categories.length,
//itemBuilder: (BuildContext context, int index) {
//Map cat = categories[index];
//return Padding(
//padding: EdgeInsets.only(right: 10.0),
//
//child: ClipRRect(
//borderRadius: BorderRadius.circular(8.0),
//child: Stack(
//children: <Widget>[
//Image.asset(
//cat["img"],
//height: MediaQuery.of(context).size.height,
//width: MediaQuery.of(context).size.width,
//fit: BoxFit.cover,
//),
//
//
//
//Center(
//
//child: Container(
//height: MediaQuery.of(context).size.height/6,
//width: MediaQuery.of(context).size.height/6,
//padding: EdgeInsets.all(1),
//constraints: BoxConstraints(
//minWidth: 20,
//minHeight: 20,
//),
//child: Center(
//child: Text(
//cat["name"],
//style: TextStyle(
//color: Colors.white,
//fontSize: 20,
//fontWeight: FontWeight.bold,
//),
//textAlign: TextAlign.center,
//),
//),
//),
//),
//
//],
//),
//),
//);
//}
//)

//category
//    .map((i) {
//return Builder(
//builder: (BuildContext context) {
//return Container(
//width: MediaQuery.of(context).size.width,
//margin: EdgeInsets.symmetric(horizontal: 5.0),
//decoration: BoxDecoration(color: Colors.amber),
//child: GestureDetector(
//child: Image.asset(i, fit: BoxFit.fill),
//onTap: () {
//Navigator.push<Widget>(
//context,
//MaterialPageRoute(
////                                          builder: (context) => ImageScreen(i),
//),
//);
//}));
//},
//);
//}).toList(),

//class HomeScreen extends StatefulWidget {
//  @override
//  _HomeScreen createState() => _HomeScreen();
//}
//
//class _HomeScreen extends State<HomeScreen> {
//
//  double _height;
//  double _width;
//  double _pixelRatio;
//  bool _large;
//  bool _medium;
//  TextEditingController emailController = TextEditingController();
//  TextEditingController passwordController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    _height = MediaQuery
//        .of(context)
//        .size
//        .height;
//    _width = MediaQuery
//        .of(context)
//        .size
//        .width;
//    _pixelRatio = MediaQuery
//        .of(context)
//        .devicePixelRatio;
//    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
//    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
//    return Material(
//      child: Container(
//        height: _height,
//        width: _width,
//        padding: EdgeInsets.only(bottom: 5),
//        child: SingleChildScrollView(
//          child: Column(
//
//            children: <Widget>[
//
////              clipShape(),
//              navigationDrawer(),
////              welcomeTextRow(),
////              signInTextRow(),
////              form(),
////              forgetPassTextRow(),
////              SizedBox(height: _height / 12),
////              button(),
////              signUpTextRow(),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//  Widget navigationDrawer(){
//    return Stack(
//
//
//      children: <Widget>[
//        ListView(
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//
//            DrawerHeader(
//
//              child: Column(
//
//                crossAxisAlignment: CrossAxisAlignment.start,
//
//                children: <Widget>[
//
//                  new UserAccountsDrawerHeader(
//
//                    accountName: new Text('Endalk Belete'),
//                    accountEmail: new Text('Endalkhbel@gmail.com'),
//                    currentAccountPicture: new CircleAvatar(
//                      backgroundImage: new NetworkImage('https://www.cosy.sbg.ac.at/~pmeerw/Watermarking/lena_gray.gif'),
//                    ),
//                  ),
//                ],
//              ),
//              decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    colors: <Color>[Colors.orange[200], Colors.pinkAccent],
//                  )),
//            ),
//            ListTile(
//              title: Text('Saved'),
//              leading: Icon(Icons.save),
//              onTap: () {
//                Navigator.pop(context);
//              },
//            ),
//            ListTile(
//              leading: Icon(Icons.gps_fixed),
//              title: Text('Post NearBy'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//            ListTile(
//              leading: Icon(Icons.timeline),
//              title: Text('My Post'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//
//            Card(
//              child: ListTile(
//                title: Text('More',style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 17,
//                ),),
//                dense: true,
//
//              ),
//
//            ),
//            ListTile(
//              leading: Icon(Icons.share),
//              title: Text('share'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//            ListTile(
//              leading: Icon(Icons.send),
//              title: Text('Send Link'),
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//            ListTile(
//              leading: Icon(Icons.settings),
//              title: Text('Setting'),
//
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//            ListTile(
//              leading: Icon(Icons.help),
//              title: Text('Help'),
//
//              onTap: () {
//                Navigator.pop(context);
//              },
//
//            ),
//
//
//
//
//          ],
//
//        ),
//      ],
//
//    );
//
//  }
//  Widget clipShape() {
//    return Stack(
//      children: <Widget>[
//        Opacity(
//          opacity: 0.75,
//          child: ClipPath(
//            clipper: CustomShapeClipper(),
//            child: Container(
//              height:_large? _height/4 : (_medium? _height/3.75 : _height/3.5),
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
////                  colors: [Colors.orange[200], Colors.pinkAccent],
//                    colors: [Colors.blue,Colors.blueAccent]
//                ),
//              ),
//            ),
//          ),
//        ),
//        Opacity(
//          opacity: 0.5,
//          child: ClipPath(
//            clipper: CustomShapeClipper2(),
//            child: Container(
//              height: _large? _height/4.5 : (_medium? _height/4.25 : _height/4),
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                    colors: [Colors.blue,Colors.blueAccent]
//                ),
//              ),
//            ),
//          ),
//        ),
////        Container(
////          child: SizedBox.expand(child: RadialMenu()),
////
////        ),
//
//      ],
//    );
//
//  }
//
//}


//
//child: Container(
//child: CarouselSlider(
//
//height: MediaQuery.of(context).size.height,
//
////Map cat = categories[index];
//aspectRatio: 16/9,
//viewportFraction: 0.8,
//initialPage: 0,
//enableInfiniteScroll: true,
//reverse: false,
//autoPlay: true,
//
//autoPlayInterval: Duration(seconds: 3),
//autoPlayAnimationDuration: Duration(milliseconds: 800),
////  autoPlayCurve: Curve.fastOutSlowIn,
//pauseAutoPlayOnTouch: Duration(seconds: 10),
//
//scrollDirection: Axis.horizontal,
//
//items: [1,2,3,4].map((i) {
//return Builder(
//
//builder: (BuildContext context) {
//Map cat = categories[i];
//
//return Container(
//width: MediaQuery.of(context).size.width,
//margin: EdgeInsets.symmetric(horizontal: 5.0),
//decoration: BoxDecoration(
//color: Colors.amber
//),
//child: Padding(
//padding: EdgeInsets.only(right: 1.0),
//
//child: ClipRRect(
//
//borderRadius: BorderRadius.circular(1.0),
//child: Stack(
//children: <Widget>[
////                Flexible(
//Image.asset(
//cat["img"],
//height: MediaQuery.of(context).size.height,
//width: MediaQuery.of(context).size.width,
//fit: BoxFit.cover,
//),
////                ),
//
//
//Center(
//
//child: Container(
//height: MediaQuery.of(context).size.height/6,
//width: MediaQuery.of(context).size.height/6,
//padding: EdgeInsets.all(1),
//constraints: BoxConstraints(
//minWidth: 20,
//minHeight: 20,
//),
//child: Center(
//child: Text(
//cat["name"],
//style: TextStyle(
//color: Colors.white,
//fontSize: 20,
//fontWeight: FontWeight.bold,
//),
//textAlign: TextAlign.center,
//),
//),
//),
//),
//
//],
//),
//),
//)
//);
//},
//);
//}).toList(),
//),
//decoration: BoxDecoration(
//color: Colors.white70,
//
//
//),
//
//)


import 'package:addisaba_app/pages/utilities/catagories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height ,
      width:MediaQuery.of(context).size.width ,

      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
            date: '4.20-30',
            assetName: "mac1.jpg",
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: "mac2.jpg",
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: "mac3.jpg",
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: "mac1.jpg",
          ),
          SlidingCard(
            name: 'Dawan District, Guangdong Hong Kong and Macao',
            date: '4.28-31',
            assetName: "mac2.jpg",
          ),
        ],
      ),
    );
  }
}
class SlidingCard extends StatelessWidget {
  final String name; //<-- title of the event
  final String date; //<-- date of the event
  final String assetName; //<-- name of the image to be displayed

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

//      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
//      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)), //<--custom shape
      child: Column(
        children: <Widget>[
          ClipRRect(  //<--clipping image
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.asset( //<-- main image
              'assets/images/$assetName',
//              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
                child:Wrap(
                  children: <Widget>[
                    Text("Price:"),
                    Text("500"),
                    Text("Age")
                  ],
                )
            ), //<-- will be replaced soon :)
          ),
        ],
      ),

    );
  }
}
//import 'package:addisaba_app/pages/utilities/catagories.dart';
//import 'package:flutter/material.dart';
//
//
//class LearnWordsPage extends StatefulWidget {
//  @override
//  _LearnWordsPageState createState() => _LearnWordsPageState();
//}
//
//class _LearnWordsPageState extends State<LearnWordsPage> {
//
//  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
//
//  var gradients = [
//    LinearGradient(
//      colors: [
//        Colors.blue,
//        Colors.green,
//      ],
//      stops: [
//        0.3,
//        0.7,
//      ],
//      begin: Alignment.bottomLeft,
//      end: Alignment.topRight,
//    ),
//    LinearGradient(
//      colors: [
//        Colors.red,
//        Colors.orange,
//      ],
//      stops: [
//        0.3,
//        0.7,
//      ],
//      begin: Alignment.bottomLeft,
//      end: Alignment.topRight,
//    ),
//    LinearGradient(
//      colors: [
//        Colors.deepPurple,
//        Colors.deepPurpleAccent,
//      ],
//      stops: [
//        0.3,
//        0.7,
//      ],
//      begin: Alignment.bottomLeft,
//      end: Alignment.topRight,
//    ),
//    LinearGradient(
//      colors: [
//        Colors.teal,
//        Colors.cyan,
//      ],
//      stops: [
//        0.3,
//        0.7,
//      ],
//      begin: Alignment.bottomLeft,
//      end: Alignment.topRight,
//    ),
//  ];
//
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return PageView.builder(
//      itemBuilder: (context, position) {
//        return Stack(
//          children: [
//            Container(
//              width: MediaQuery.of(context).size.width,
//              height:MediaQuery.of(context).size.height ,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Image.asset(category[0], fit: BoxFit.cover,),
//
//
//                ],
//              ),
//
//            ),
//
//          ],
//        );
//      },
//      scrollDirection: Axis.horizontal,
//      itemCount: 10,
//    );
//  }
//}







//class CarouselSliderCustom extends StatefulWidget {
//  Widget testBGCarousel = new Container(
//    child: new Carousel(
//      children: [
//        new AssetImage('images/img1.jpg'),
//        new AssetImage('images/img2.jpg'),
//        new AssetImage('images/img3.jpg'),
//      ].map((bgImg) => new Image(image: bgImg, width: 1500.0, height: 1500.0, fit: BoxFit.cover)).toList(),
//      autoplayDuration: const Duration(seconds: 1),
//    ),
//  );
//  @override
//  _CarouselSlider createState() => _CarouselSlider();
//}

//class _CarouselSlider extends State<CarouselSliderCustom> {
//  Axis axis = Axis.horizontal;
//  String type = "slideswiper";
//  String axisType = "HORIZONTAL";
//  List<String> assetList = [
//    category[0],
//    category[1],
//    category[2],
//    category[3],
//    category[4],
//  ];
//
//}

//      return    Carousel(
////                      height: 400.0,
//
//
//            images: [
//              Image.asset(category[0],fit: BoxFit.fill,
//               ),
//              Image.asset(category[1],fit: BoxFit.fill,),
//              Image.asset(category[2],fit: BoxFit.fill,),
//              Image.asset(category[3],fit: BoxFit.fill,),
//              Image.asset(category[4],fit: BoxFit.fill,),
//
//            ],
//
//            dotSize: 10.0,
//            dotSpacing: 25.0,
//            dotColor: Colors.lightGreenAccent,
//            indicatorBgPadding: 5.0,
//            dotBgColor: Colors.transparent,
//            borderRadius: false,
//            moveIndicatorFromBottom: 90.0,
//            noRadiusForIndicator: true,
//            animationCurve:Curves.bounceInOut,
//            defaultImage:Image.asset(category[0]) ,
////            boxFit: BoxFit.scaleDown,
//          autoplayDuration: Duration(seconds:4 ),
//            animationDuration: Duration(seconds: 3),
//            autoplay: true,
//            overlayShadow: true,
//            overlayShadowColors: Colors.white,
//            overlayShadowSize: 0.7,
//
//
//
//
//
//
////                    onImageChange: ,
//
//          );



//Padding(
//padding: EdgeInsets.all(5),
//child:  Column(
//
//children: <Widget>[
//Text("Cor 7 Hp 1tera Amd 4G",style: TextStyle(fontSize: MediaQuery.of(context).size.height/40,   color: Theme.of(context).accentColor,     fontWeight: FontWeight.w800,),
//textAlign: TextAlign.center,),
//Text("Price: 2000",style: TextStyle(fontSize: MediaQuery.of(context).size.height/40,   color: Theme.of(context).accentColor,),
//
//textAlign: TextAlign.center,),
//FlatButton(
//child: Text(
//"See Detail",
//style: TextStyle(
//fontSize: MediaQuery.of(context).size.height/30,
//fontWeight: FontWeight.w800,
//color: Theme.of(context).accentColor,
//),
//),
//onPressed: (){
//
//},
//),
//
//
//],
//)
//)
//
//child: Card(
//
//shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
//
//child: Container(
//height: MediaQuery.of(context).size.height/2.5 ,
//width:MediaQuery.of(context).size.width ,
//
//child: Column(
//children: <Widget>[
//Image.asset(category[2], fit: BoxFit.cover,),
//
//],
//),
//
//decoration: BoxDecoration(
////          color: Colors.blue.withOpacity(0.2),
////          border: BoxBorder(Radius.circular(15))
//),
//),
////
//
//),






//builder(int index) {
//  return new AnimatedBuilder(
////      animation: controller,
//    builder: (context, child) {
//      double value = 1.0;
////        if (pageController.position.haveDimensions) {
////          value = controller.page - index;
////          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
////        }
//
//      return new Center(
//        child: new SizedBox(
//          height: Curves.easeOut.transform(value) * 300,
//          width: Curves.easeOut.transform(value) * 250,
//          child: child,
//        ),
//      );
//    },
//    child: new Container(
//      margin: const EdgeInsets.all(8.0),
//      color: index % 2 == 0 ? Colors.blue : Colors.red,
//    ),
//  );
//}
//}
