import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:delalaw/constants/Asserts.dart' as assets;
import 'package:image_picker/image_picker.dart';

class PostBlog extends StatefulWidget {
  @override
  _PostBlog createState() => _PostBlog();
}
class _PostBlog extends State<PostBlog> {
  File  _image;

  _pickImageFromGallery() async {
    File image = await  ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
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
            onPressed: () => _pickImageFromGallery(),
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(
                Icons.photo_library,
                size: 30,
              ),
//              onPressed: () => _pickImage(ImageSource.gallery),
              color: Colors.pink,
            ),
          ],
        ),
      ),
      body: Card(
        margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    elevation: 10,
        child: bodyList(),
      )
    );
  }
  bodyList(){
    return  ListView(
      children: <Widget>[
//          isUploading ? linearProgress() : Text(""),
        Container(
          height: 220.0,
          width: MediaQuery.of(context).size.width * 0.8,
          child: AspectRatio(
            aspectRatio: 16 / 9,
//              child: Container(
//                decoration: BoxDecoration(
//                  image: DecorationImage(
//                    fit: BoxFit.cover,
////                    image: FileImage(file),
//                  ),
//                ),
//              ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage:
            CachedNetworkImageProvider(assets.images[0]),
          ),
          title: Container(
            width: 250.0,
            child: TextField(
//                controller: captionControler,
              decoration: InputDecoration(
                  hintText: 'Write a caption', border: InputBorder.none),
            ),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.pin_drop,
            color: Colors.orange,
            size: 35,
          ),
          title: Container(
            width: 280,
            child: TextField(
//                controller: locationControler,
              decoration: InputDecoration(
                  hintText: 'Where was this photo taken ?',
                  border: InputBorder.none),
            ),
          ),
        ),
        Container(
          width: 200.0,
          height: 100.0,
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
//              onPressed: getUserLocation,
            icon: Icon(
              Icons.my_location,
              color: Colors.white,
            ),
          ),
        ),

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
    child: Text(
      "Add to Cart".toUpperCase(),
      style: TextStyle(
        fontSize: 14.0,
      ),
    ),
  ),
)



      ],
    );
  }
}
