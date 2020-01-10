import 'dart:io';
//import 'package:image_picker_modern/image_picker_modern.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:delalaw/constants/Asserts.dart' as assets;
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

class PostBlog extends StatefulWidget {
  @override
  _PostBlog createState() => _PostBlog();
}
class _PostBlog extends State<PostBlog> {

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
        title: Text("Post"),
                actions: <Widget>[
        FlatButton(
          child: Text(
            'Post',
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
//            onPressed: isUploading ? null : () => handleSubmit(),
        )
      ],

      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.photo_camera,
                size: 30,
              ),
            onPressed: () => capture(),
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(
                Icons.photo_library,
                size: 30,
              ),
             onPressed: () => getImage(),
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
      body: Card(
       // margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 10,
        child: bodyList(),
      )
    );
  }
  bodyList(){
    return  ListView(
      children: <Widget>[

      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: image==null?Text(""): Container(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      child:image == null ? Text('Image not supported.') : Image.file(image),

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            ListTile(
              leading: Icon(Icons.title,color: COLOR_PRIMARY,),
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
                Icons.pin_drop,
                color: Colors.blue,
                size: 35,
              ),
              title: Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
//                controller: locationControler,
                  decoration: InputDecoration(
                      hintText: 'Where is item location ?',
                      ),
                ),
              ),
            ),
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
            Divider(),
            ListTile(
              leading: Icon(
                Icons.pin_drop,
                color: Colors.blue,
                size: 35,
              ),
              title: Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
//                controller: locationControler,
                  decoration: InputDecoration(
                    hintText: 'Item Catagory ?',
                  ),
                ),
              ),
            ),

            Divider(),
            ListTile(
              leading: Icon(
                Icons.description,
                color: Colors.blue,
                size: 35,
              ),
              title: Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  style: TextStyle(color: Colors.black),
maxLines: 3,
//                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Description about the item?',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue
                      )
                    )
                  ),
                ),
              ),
            ),
            Divider(),

            Divider(),
            Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.white,
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                onPressed: () {},
                child: Container(
                  width: 120,
                  child:Text(
                    "Post".toUpperCase(),
                    style: TextStyle(
                      fontSize: 20.0,

                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
            )

          ],
        ),
      )


      ],
    );
  }
}
