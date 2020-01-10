import 'dart:io';
import 'package:delalaw/constants/colors.dart';
import 'package:delalaw/pages/dialog/info_dialogBank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

class Payment extends StatefulWidget {
  @override
  _Payment createState() => _Payment();
}
class _Payment extends State<Payment> {

  File image;
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  Position _currentPosition;
  String _currentAddress;

  Future getImage() async {
    var _image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = _image;
    });
  }
  Future capture() async {
    var _image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      image = _image;
    });
  }
  getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),


        ),

        body: Container(
          // margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//          elevation: 10,
          child: bodyList(context),
        )
    );
  }
  bodyList(context){
    return  ListView(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(18.0)),
            border: Border.all(color: Colors.blue)

    ),
           child: Column(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              ListTile(
                leading: Icon(Icons.local_atm,color: COLOR_PRIMARY,),
                title: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextField(
//                controller: captionControler,
                    decoration: InputDecoration(
                      hintText: 'Write a title', ),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.confirmation_number,
                  color: Colors.blue,
                  size: 35,
                ),
                title: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextField(
//                controller: locationControler,
                    decoration: InputDecoration(
                      hintText: 'Enter your transaction ID',
                    ),
                  ),
                ),
              ),

              Divider(),
              ListTile(
                leading: Icon(
                  Icons.security,
                  color: Colors.blue,
                  size: 35,
                ),
                title: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextField(
//                controller: locationControler,
                    decoration: InputDecoration(
                      hintText: 'Enter your Promocode',
                    ),
                  ),
                ),
              ),

              Divider(),
              Container(
                alignment: Alignment.center,
                child: RaisedButton.icon(
                  label: Text(
                    'Use Current Location',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.blue,
                  onPressed: () => getCurrentLocation(),
                  icon: Icon(
                    Icons.my_location,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )


            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
Text("Supported Bank",textAlign: TextAlign.center,style: TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 23,
),),
        SizedBox(
          height: 10,
        ),
      Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child:Container(

            child: ListTile(
              onTap: ()=>{
               InfoDialog(
                   context,
                 "Dashen Bank",
                "assets/images/Dashen.png",
                   "Samuel Kassa",
                 "1000215053943498",
                 "refrence id"

               ),
              },
              leading:Container(

    child:CircleAvatar(

    backgroundImage:AssetImage("assets/images/Dashen.png")

    ),

    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(40.0),),
    border: Border.all(color: Colors.blue)
    ),
    ),


              title: Text("Dashen Bank",textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 23,
                  fontWeight: FontWeight.w900
              ),
              ),

            ),

        )
      ),
        Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child:Container(

              child: ListTile(
                onTap: ()=>{
                  InfoDialog(
                      context,
                      "Commercial Bank",
                      "assets/images/Cbe.jpg",
                      "Samuel Kassa",
                      "1000215053943498",
                      "refrence id"

                  ),
                },
                leading:Container(

    child:CircleAvatar(

    backgroundImage:AssetImage("assets/images/Cbe.jpg")

    ),

    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(40.0),),
    border: Border.all(color: Colors.blue)
    ),
    ),
                title: Text("Commercial Bank",textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    fontWeight: FontWeight.w900
                  ),
                ),

              ),

            )
        ),
        Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child:Container(

              child: ListTile(
                onTap: ()=>{
                  InfoDialog(
                      context,
                      "Awash Bank",
                      "assets/images/Cbe.jpg",
                      "Samuel Kassa",
                      "1000215053943498",
                      "refrence id"

                  ),
                },
                leading:Container(

                  child:CircleAvatar(

                      backgroundImage:AssetImage("assets/images/Cbe.jpg")

                  ),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0),),
                      border: Border.all(color: Colors.blue)
                  ),
                ),
                title: Text("Awash Bank",textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                  ),
                ),

              ),

            )
        ),

      ],
    );
  }
}
