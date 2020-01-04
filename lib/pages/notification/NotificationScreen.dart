import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/Asserts.dart';
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget{
  _NotificationScreen createState() => _NotificationScreen();
}
class _NotificationScreen extends State<NotificationScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: "Notification"),
        body: Form(
          child:Column(
            children: <Widget>[
              //buildListLayout(),
    notificationList(),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),


            ],
          ),
        ),
    );
  }
  Widget notificationList() {
    return Flexible(
      child: StreamBuilder(

        builder: (context, some) {
          if (!true) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
//            listItem = snapshot.data.documents;
            return ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemBuilder: (context, index) =>
                  Container(

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                        height: 100,
                        child: Card(
                          child: Center(
                            child: ListTile(
                              onTap: () {
//                                Navigator.pushNamed(context, HOME_CATAGORY);
                              },
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: CachedNetworkImageProvider(images[index%images.length]),
                              ),
                              title: Text('You have new notification message from endalk belete', softWrap: true,),
                              subtitle: Text('2 hrs ago', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                            ),
                          ),
                        )
                    ),

                      ],
                    ),

                  ),
              itemCount:100,

            );
          }
        },
      ),
    );
  }

}