import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  String name;
  String photoUrl;
  String receiverUid;
  ChatScreen({this.name, this.photoUrl, this.receiverUid});

  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
//  Message _message;
//  var _formKey = GlobalKey<FormState>();
//  var map = Map<String, dynamic>();
//  CollectionReference _collectionReference;
//  DocumentReference _receiverDocumentReference;
//  DocumentReference _senderDocumentReference;
//  DocumentReference _documentReference;
//  DocumentSnapshot documentSnapshot;
//  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//  String _senderuid;
 var listItem;
//  String receiverPhotoUrl, senderPhotoUrl, receiverName, senderName;
//  StreamSubscription<DocumentSnapshot> subscription;
//  File imageFile;
//  StorageReference _storageReference;
 TextEditingController _messageController;

  @override
  void initState() {
    super.initState();

   _messageController = TextEditingController();
//    getUID().then((user) {
//      setState(() {
//        _senderuid = user.uid;
//        print("sender uid : $_senderuid");
//        getSenderPhotoUrl(_senderuid).then((snapshot) {
//          setState(() {
//            senderPhotoUrl = snapshot['photoUrl'];
//            senderName = snapshot['name'];
//          });
//        });
//        getReceiverPhotoUrl(widget.receiverUid).then((snapshot) {
//          setState(() {
//            receiverPhotoUrl = snapshot['photoUrl'];
//            receiverName = snapshot['name'];
//          });
//        });
//      });
//    });
  }

  @override
  void dispose() {
    super.dispose();
//    subscription?.cancel();
  }

//  void addMessageToDb(Message message) async {
//    print("Message : ${message.message}");
//    map = message.toMap();
//
//    print("Map : ${map}");
//    _collectionReference = Firestore.instance
//        .collection("messages")
//        .document(message.senderUid)
//        .collection(widget.receiverUid);
//
//    _collectionReference.add(map).whenComplete(() {
//      print("Messages added to db");
//    });
//
//    _collectionReference = Firestore.instance
//        .collection("messages")
//        .document(widget.receiverUid)
//        .collection(message.senderUid);
//
//    _collectionReference.add(map).whenComplete(() {
//      print("Messages added to db");
//    });
//
//    _messageController.text = "";
//  }

  @override
  Widget build(BuildContext context) {
    String hel="";
    return Scaffold(
        appBar: AppBar(
          title: Text("chat with endalk"),
        ),
        body: Form(
//          key: _formKey,
          child: hel == null
              ? Container(
            child: CircularProgressIndicator(),
          )
              : Column(
            children: <Widget>[
              //buildListLayout(),
              ChatMessagesListWidget(),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              ChatInputWidget(),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ));
  }

  Widget ChatInputWidget() {
    return Container(
      height: 55.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              splashColor: Colors.white,
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              onPressed: () {
//                pickImage();
              },
            ),
          ),
          Flexible(
            child: TextFormField(
              validator: (String input) {
                if (input.isEmpty) {
                  return "Please enter message";
                }
              },
              controller: _messageController,
              decoration: InputDecoration(
                  hintText: "Enter message...",
                  labelText: "Message",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              onFieldSubmitted: (value) {
                _messageController.text = value;
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              splashColor: Colors.white,
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () {
//                if (_formKey.currentState.validate()) {
////                  sendMessage();
//                }
              },
            ),
          )
        ],
      ),
    );
  }

//  Future<String> pickImage() async {
//    var selectedImage =
//    await ImagePicker.pickImage(source: ImageSource.gallery);
//    setState(() {
//      imageFile = selectedImage;
//    });
//    _storageReference = FirebaseStorage.instance
//        .ref()
//        .child('${DateTime.now().millisecondsSinceEpoch}');
//    StorageUploadTask storageUploadTask = _storageReference.putFile(imageFile);
//    var url = await (await storageUploadTask.onComplete).ref.getDownloadURL();
//
//    print("URL: $url");
//    uploadImageToDb(url);
//    return url;
//  }
//
//  void uploadImageToDb(String downloadUrl) {
//    _message = Message.withoutMessage(
//        receiverUid: widget.receiverUid,
//        senderUid: _senderuid,
//        photoUrl: downloadUrl,
//        timestamp: FieldValue.serverTimestamp(),
//        type: 'image');
//    var map = Map<String, dynamic>();
//    map['senderUid'] = _message.senderUid;
//    map['receiverUid'] = _message.receiverUid;
//    map['type'] = _message.type;
//    map['timestamp'] = _message.timestamp;
//    map['photoUrl'] = _message.photoUrl;
//
//    print("Map : ${map}");
//    _collectionReference = Firestore.instance
//        .collection("messages")
//        .document(_message.senderUid)
//        .collection(widget.receiverUid);
//
//    _collectionReference.add(map).whenComplete(() {
//      print("Messages added to db");
//    });
//
//    _collectionReference = Firestore.instance
//        .collection("messages")
//        .document(widget.receiverUid)
//        .collection(_message.senderUid);
//
//    _collectionReference.add(map).whenComplete(() {
//      print("Messages added to db");
//    });
//  }
//
//  void sendMessage() async {
//    print("Inside send message");
//    var text = _messageController.text;
//    print(text);
//    _message = Message(
//        receiverUid: widget.receiverUid,
//        senderUid: _senderuid,
//        message: text,
//        timestamp: FieldValue.serverTimestamp(),
//        type: 'text');
//    print(
//        "receiverUid: ${widget.receiverUid} , senderUid : ${_senderuid} , message: ${text}");
//    print(
//        "timestamp: ${DateTime.now().millisecond}, type: ${text != null ? 'text' : 'image'}");
//    addMessageToDb(_message);
//  }
//
//  Future<FirebaseUser> getUID() async {
//    FirebaseUser user = await _firebaseAuth.currentUser();
//    return user;
//  }
//
//  Future<DocumentSnapshot> getSenderPhotoUrl(String uid) {
//    var senderDocumentSnapshot =
//    Firestore.instance.collection('users').document(uid).get();
//    return senderDocumentSnapshot;
//  }
//
//  Future<DocumentSnapshot> getReceiverPhotoUrl(String uid) {
//    var receiverDocumentSnapshot =
//    Firestore.instance.collection('users').document(uid).get();
//    return receiverDocumentSnapshot;
//  }

  Widget ChatMessagesListWidget() {
//    print("SENDERUID : $_senderuid");
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
                child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

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

                 ConstrainedBox(
                   constraints: BoxConstraints(
                     maxWidth: MediaQuery.of(context).size.width*0.8,
                   ),

                  child:Padding(
                    padding: EdgeInsets.only(left: 7,bottom: 7),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[

                                      Flexible(
                                        child:RichText(
                                          text: TextSpan(

                                            children: <TextSpan>[

                                              TextSpan(
                                                text: 'This is Message for chat. by the way how are you? '
                                                    ''
                                                    '',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0
                                                ),
                                              ),
                                              TextSpan(
                                                text: '3:16 PM',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12.0,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                            ),

                                      Icon(Icons.check, color: Colors.white, size: 16,)
                                    ]
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CustomPaint(
                                    painter: ChatBubbleTriangle(),
                                  )
                              )
                            ]
                        )
                    ),
                  ),
                 ),

Padding(
  padding: EdgeInsets.all(7),
  child: Align(
      alignment: Alignment.centerLeft,
      child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF486993),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'This is telegram message  ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0
                            ),
                          ),
                          TextSpan(
                            text: '3:16 PM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.check, color: Color(0xFF7ABAF4), size: 16,)
                  ]
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: CustomPaint(
                  painter: ChatBubbleTriangle(),
                )
            )
          ]
      )
  ),
)
                ],
              ),

              ),
              itemCount:10,

            );
          }
        },
      ),
    );
  }
//
//  Widget chatMessageItem(DocumentSnapshot documentSnapshot) {
//    return buildChatLayout(documentSnapshot);
//  }

//  Widget buildChatLayout(DocumentSnapshot snapshot) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
//      children: <Widget>[
//        Padding(
//          padding: const EdgeInsets.all(12.0),
//          child: Row(
//            mainAxisAlignment: snapshot['senderUid'] == _senderuid?
//            MainAxisAlignment.end : MainAxisAlignment.start,
//            children: <Widget>[
//              snapshot['senderUid'] == _senderuid
//                  ? CircleAvatar(
//                backgroundImage: senderPhotoUrl == null
//                    ? AssetImage('assets/blankimage.png')
//                    : NetworkImage(senderPhotoUrl),
//                radius: 20.0,
//              )
//                  : CircleAvatar(
//                backgroundImage: receiverPhotoUrl == null
//                    ? AssetImage('assets/blankimage.png')
//                    : NetworkImage(receiverPhotoUrl),
//                radius: 20.0,
//              ),
//              SizedBox(
//                width: 10.0,
//              ),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  snapshot['senderUid'] == _senderuid
//                      ? new Text(
//                    senderName == null ? "" : senderName,
//                    style: TextStyle(
//                        color: Colors.black,
//                        fontSize: 16.0,
//                        fontWeight: FontWeight.bold),
//                  )
//                      : new Text(
//                    receiverName == null ? "" : receiverName,
//                    style: TextStyle(
//                        color: Colors.black,
//                        fontSize: 16.0,
//                        fontWeight: FontWeight.bold),
//                  ),
//                  snapshot['type'] == 'text'
//                      ? new Text(
//                    snapshot['message'],
//                    style: TextStyle(color: Colors.black, fontSize: 14.0),
//                  )
//                      : InkWell(
//                    onTap: (() {
//                      Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (context) => FullScreenImage(photoUrl: snapshot['photoUrl'],)));
//                    }),
//                    child: Hero(
//                      tag: snapshot['photoUrl'],
//                      child: FadeInImage(
//                        image: NetworkImage(snapshot['photoUrl']),
//                        placeholder: AssetImage('assets/blankimage.png'),
//                        width: 200.0,
//                        height: 200.0,
//                      ),
//                    ),
//                  )
//                ],
//              )
//            ],
//          ),
//        ),
//      ],
//    );
//  }
}
class ChatBubbleTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Color(0xFF486993);

    var path = Path();
    path.lineTo(-15, 0);
    path.lineTo(0, -15);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}