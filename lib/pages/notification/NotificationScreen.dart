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

        builder: (context, snapshot) {
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
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
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
                          image: AssetImage("assets/images/bgHome3.jpg"),
                        )
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[


                        Container(
                          color: Colors.white,
                      child: new InkWell(
                        onTap: () {
                          print("notification tapped");
                        },
                          child:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Card(
                              child: Row(

                                children: <Widget>[

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(

                                        child:Padding(
                                          padding: EdgeInsets.only(right: 5,bottom: 5,top: 5,left: 10),
                                          child:CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/endalk.jpg'),
//
                                            radius: 30.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(


                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width*0.65,

                                          ),
                                          child:Padding(
                                            padding: EdgeInsets.only(right: 5,bottom: 5,top: 5,left: 10),
                                            child:Column(
                                              children: <Widget>[
                                                Text(
                                                    "you have new notification about your status from endalk belete "
                                                ),
                                                Text("2hr a go",style: TextStyle(color: Colors.grey),)
                                              ],
                                            )

                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.end,
//                        children: <Widget>[
//
//
//                          SizedBox(
//                            width: 10.0,
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              new Text("I am fine thankyou. how is everyting going on?",
//                                style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 10.0,
//                                    fontWeight: FontWeight.w900),
//                              )
//
//
//
//                            ],
//                          ),
//                          CircleAvatar(
//                            backgroundImage: AssetImage('assets/images/endalk.jpg'),
////
//                            radius: 20.0,
//                          ),
//                        ],
//                      ),
                          ),
                        ),
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