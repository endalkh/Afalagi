// Drawer(
//        child: Container(
//          padding: const EdgeInsets.only(left: 16.0, right: 40),
//          decoration: BoxDecoration(
//              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
//          width: 300,
//          child: SafeArea(
//            child: SingleChildScrollView(
//              child: Column(
//                children: <Widget>[
//Container(
//
//  child: Column(
//    children: <Widget>[
//
//      Container(
//        alignment: Alignment.centerRight,
//        child: IconButton(
//          icon: Icon(
//            Icons.power_settings_new,
//            color: active,
//          ),
//          onPressed: () {},
//        ),
//      ),
//      Container(
//        height: 90,
//        alignment: Alignment.center,
//        decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            gradient: LinearGradient(
//                colors: [Colors.orange, Colors.deepOrange])),
//        child: CircleAvatar(
//          radius: 40,
//          backgroundImage: CachedNetworkImageProvider(image),
//        ),
//      ),
//      SizedBox(height: 5.0),
//      Text(
//        "Endalk",
//        style: TextStyle(
//            color: Colors.black,
//            fontSize: 18.0,
//            fontWeight: FontWeight.w600),
//      ),
//      Text(
//        "endalkhbel@gmail.com",
//        style: TextStyle(color: active, fontSize: 16.0),
//      ),
//    ],
//  ),
//  decoration: BoxDecoration(
//    gradient: LinearGradient(
//      colors: [Colors.blue,Colors.blueAccent]
//    )
//  ),
//),
//
//                  SizedBox(height: 30.0),
//
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, PROFILE);
//                    },
//                    child: _buildRow(Icons.person_pin, "My profile",showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, POST);
//                    },
//                    child: _buildRow(Icons.attach_file, "Post",showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, CHAT_LIST);
//                    },
//                    child: _buildRow(Icons.message, "Messages", showBadge: true),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                           Navigator.pushNamed(context, DIALOGE_PAGE);
//                    },
//                    child: _buildRow(Icons.save, "Saved", showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, DIALOGE_PAGE);
//                    },
//                    child: _buildRow(Icons.timeline, "My Post", showBadge: false),
//                  ),
//                  Divider(thickness: 2,),
//                  Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, DIALOGE_PAGE);
//                    },
//                    child: _buildRow(Icons.share, "Share", showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, DIALOGE_PAGE);
//                    },
//                    child: _buildRow(Icons.send, "Send Link", showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, SETTING);
//                    },
//                    child: _buildRow(Icons.settings, "Settings", showBadge: false),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, SETTING);
//                    },
//                    child: _buildRow(Icons.email, "Contact us"),
//                  ),
//                  _buildDivider(),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.pushNamed(context, SETTING);
//                    },
//                    child:_buildRow(Icons.info_outline, "Help"),
//                  ),
//
//                ],
//              ),
//            ),
//ListTile(
//title: Text('Post'),
//leading: Icon(Icons.attach_file),
//onTap: () {
//Navigator.pushNamed(context, POST);
//},
//),
//ListTile(
//title: Text('Chat'),
//leading: Icon(Icons.chat),
//onTap: () {
//Navigator.pushNamed(context, CHAT);
//},
//),
//
//ListTile(
//title: Text('Saved'),
//leading: Icon(Icons.save),
//onTap: () {
//Navigator.pushNamed(context, DIALOGE_PAGE);
//},
//),
//ListTile(
//leading: Icon(Icons.gps_fixed),
//title: Text('Profile'),
//onTap: () {
//Navigator.pushNamed(context, PROFILE);
//},
//
//),
//ListTile(
//leading: Icon(Icons.timeline),
//title: Text('My Post'),
//onTap: () {
//Navigator.pop(context);
//},
//
//),
//
//Divider(thickness: 2,),
//
//ListTile(
//leading: Icon(Icons.share),
//title: Text('share'),
//onTap: () {
//Navigator.pop(context);
//},
//
//),
//ListTile(
//leading: Icon(Icons.send),
//title: Text('Send Link'),
//onTap: () {
//Navigator.pop(context);
//},
//
//),
//ListTile(
//leading: Icon(Icons.settings),
//title: Text('Setting'),
//
//onTap: () {
//Navigator.pushNamed(context, SETTING);
//
//},
//
//),
//ListTile(
//leading: Icon(Icons.help),
//title: Text('Help'),
//
//onTap: () {
//Navigator.pop(context);
//},
//
//),
//

//          ),
//        ),
//      ),