

import 'package:delalaw/constants/Asserts.dart';
import 'package:delalaw/pages/network_image/NetworkImage.dart';
import 'package:flutter/material.dart';

class SuccessDialog {
  String title,subtitle,date,msgType;
  SuccessDialog(context,title,subtitle,date,type){
    this.title=title;
    this.subtitle=subtitle;
    this.msgType=type;

    successDialog(context);
  }

  successDialog( BuildContext context ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return _SuccessDialog(context,title,subtitle,date,msgType);
        }
    );
  }


}



class _SuccessDialog extends StatelessWidget {
  String title,subtitle,date,msgType;
  final image = images[2];
//  final TextStyle subtitle = TextStyle(fontSize: 12.0, color: Colors.grey);
  final TextStyle label = TextStyle(fontSize: 14.0, color: Colors.grey);
  _SuccessDialog(context,title,subtitle,date,type){
    this.title=title;
    this.subtitle=subtitle;
    this.msgType=type;
  }

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: SizedBox(
          height: 300,
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
                      child:IconButton(
                        icon: Icon(Icons.check_circle,
                          size: 60,
                          color: Colors.green,
                        ),

                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0),),
                          border: Border.all(color: Colors.green)
                      ),
                    ),
                  ),



                  Text(title,style: TextStyle(color: Colors.green,fontSize: 25),),
                  Text(subtitle,style: TextStyle(
                      fontSize: 16.0, color: Colors.grey
                  ),),

                  Divider(),
                  new RaisedButton(
                    onPressed: ()=>{
                      Navigator.pop(context),
                    },
                    textColor: Colors.white,
                    color: Colors.green,
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