

import 'package:delalaw/constants/Asserts.dart';
import 'package:delalaw/pages/network_image/NetworkImage.dart';
import 'package:flutter/material.dart';

class InfoDialog {
   String title,subtitle,date,msgType;
  InfoDialog(context,title,subtitle,date,type){
    this.title=title;
    this.subtitle=subtitle;
    this.msgType=type;

    infoDialog(context);
  }

  infoDialog( BuildContext context ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return _InfoDialog(context,title,subtitle,date,msgType);
        }
    );
  }


}



class _InfoDialog extends StatelessWidget {
  String title,subtitle,date,msgType;
  final image = images[2];
//  final TextStyle subtitle = TextStyle(fontSize: 12.0, color: Colors.grey);
  final TextStyle label = TextStyle(fontSize: 14.0, color: Colors.grey);
  _InfoDialog(context,title,subtitle,date,type){
    this.title=title;
    this.subtitle=subtitle;
    this.msgType=type;
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: SizedBox(
        height: 350,
        child: Dialog(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))) ,
          child: Container(
            child: Column(
              children: <Widget>[
  Padding(
    padding: EdgeInsets.all(20.0),
    child:Container(
      height: 80,
      width: 80,
      child:CircleAvatar(
        backgroundImage:AssetImage("assets/images/Dashen.png")

      ),



      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0),),
          border: Border.all(color: Colors.blue)
      ),
    ),
  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("Dashen Bank",
                      style: TextStyle(
                      fontSize: 20,
                        fontWeight: FontWeight.w900
                    ),)
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("account No.  ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900
                      ),),
                    Text("10000929012321",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        color: Colors.blue

                      ),)
                  ],
                ),
Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("account Name  ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900
                      ),),
                    Text("AddisAba Software",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue

                      ),)
                  ],
                ),

                Divider(),
                new RaisedButton(
                  onPressed: ()=>{
Navigator.pop(context),
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "OK",
                  ),
                ),




              ],
            ),

          ),
        ),

      ),
    );
  }
}