//
//import 'package:delalaw/constants/colors.dart';
//import 'package:delalaw/constants/constants.dart';
//import 'package:delalaw/constants/gradients.dart';
//import 'package:delalaw/pages/about/about.dart';
//import 'package:delalaw/state/app_state.dart';
//import 'package:flutter/material.dart';
//import 'package:graphql/client.dart';
//import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//import 'settings_gql.dart';
//
//class SettingScreen extends StatelessWidget {
//  final inputController = TextEditingController();
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: appBarComponent(context),
//      body: body(context),
//    );
//  }
//
//  Widget appBarComponent(context) {
//    return PreferredSize(
//      preferredSize: Size.fromHeight(kToolbarHeight),
//      child: Container(
//          child: Row(
//            children: <Widget>[
//              Container(
//                width: 90,
//                height: 80,
//                padding: EdgeInsets.only(right: 20),
//                decoration: BoxDecoration(
//                  color: COLOR_PRIMARY,
//                  borderRadius: BorderRadius.only(
//                    bottomRight: Radius.circular(100),
//                  ),
//                ),
//                child: IconButton(
//                  icon: Icon(
//                    Icons.arrow_back,
//                    color: WHITE_COLOR,
//                  ),
//                  onPressed: () => Navigator.of(context).pop(),
//                ),
//              ),
//            ],
//          )),
//    );
//  }
//
//  Widget body(context) {
//    return ListView(
//      children: <Widget>[headerComponent(), ...settingsListComponent(context)],
//    );
//  }
//
//  Widget headerComponent() {
//    return Container(
//      padding: EdgeInsets.only(left: 25, top: 30),
//      child: Text("Settings", style: TextStyle(fontSize: 36)),
//    );
//  }
//
//  List<Widget> settingsListComponent(context) {
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

////    final appState = Provider.of<AppState>(context);
//
//    return [
//      Container(margin: EdgeInsets.only(top: 20)),
////     meQueryComponent(context),
//      displayNameComponent(context,"endalk"),
//      darkModeComponent(context),
//      SoundSetting(context),
//      logOutComponent(context),
////      deleteUserMutationComponent(context, appState),
//      aboutAppComponent(context)
//    ];
//  }
////
//  Widget meQueryComponent(context) {
////    return Query(
////      options: QueryOptions(
////        pollInterval: 5,
////        document: meQuery,
////        context: {
////          'headers': <String, String>{
////            'Authorization': 'Bearer'
////                //' ${appState.token}',
////          },
////        },
////      ),
////      builder: (res, {refetch}) {
////        var data = {};
////        if (res.data != null) data = res.data["me"] ?? {};
//////        return renameMutationComponent(context, data, appState);
////      },
////    );
//  }
//
////  Widget renameMutationComponent(context, Map name, appState) {
////    return Mutation(
////      options: MutationOptions(
////        document: renameUserMutation,
////        context: {
////          'headers': <String, String>{
////            'Authorization': 'Bearer ${appState.token}',
////          },
////        },
////      ),
////      builder: (run, res) => displayNameComponent(context, run, name),
////    );
////  }
//
//  Widget displayNameComponent(context, name) {
//    return settingsItemComponent(
//      title: "Change your display name",
//      info: "Your name is set to $name  ",
//      color: COLOR_PRIMARY,
////      onPressed: () => displayDialog(context, runMutation, rename: true),
//    );
//  }
//
//  Widget darkModeComponent(context) {
//    return settingsItemComponent(
//      title: "Enable Dark Theme",
//      info: "Switch to dark theme",
//      color: COLOR_PRIMARY,
//      onPressed: () async {
////        final pref = await SharedPreferences.getInstance();
////        appState.toggleTheme();
////        final dark = appState.currentTheme.brightness == Brightness.dark;
////        await pref.setBool("dark", dark);
//      },
//    );
//  }
//
//  Widget SoundSetting(context) {
//    return settingsItemComponent(
//      title: "Sound Setting",
//      info: "Switch to Silent mode",
//      color: COLOR_PRIMARY,
//      onPressed: () async {
////        final pref = await SharedPreferences.getInstance();
////        appState.toggleTheme();
////        final dark = appState.currentTheme.brightness == Brightness.dark;
////        await pref.setBool("dark", dark);
//      },
//    );
//  }
//
//  Widget logOutComponent( context) {
//    return settingsItemComponent(
//      title: "Log out",
//      info: "Log out from your account",
//      color: Colors.red,
//      onPressed: () async {
//       await resetApp( context);
//      },
//    );
//  }
//
////  Widget deleteUserMutationComponent(context, appState) {
////    return Mutation(
////      options: MutationOptions(context: {
////        'headers': <String, String>{
////          'Authorization': 'Bearer ${appState.token}',
////        },
////      }, document: deleteUserMutation),
////      builder: (runMutation, result) {
////        return deleteItemComponent(context, runMutation);
////      },
////      onCompleted: (result) async {
////        if (result != null) {
////          await resetApp(appState, context);
////        }
////      },
////    );
////  }
//
//  Future<void> resetApp(context) async {
//    final pref = await SharedPreferences.getInstance();
//    await pref.clear();
////    appState.setToken("");
////    appState.setLight();
//    Navigator.pushNamed(context, SIGN_IN);
//  }
//
//  Widget deleteItemComponent(context) {
//    return settingsItemComponent(
//      title: "Delete Account",
//      info: "Delete your account permanently",
//      color: Colors.redAccent[700],
////      onPressed: () => displayDialog(context, runMutation),
//    );
//  }
//
//  Widget aboutAppComponent(context) {
//    return settingsItemComponent(
//      title: "About app",
//      info: "View info about the app",
//      color: Color(0xFF2A99A0),
//      onPressed: () {
//        Navigator.push(
//            context, MaterialPageRoute(builder: (context) => AboutScreen()));
//      },
//    );
//  }
//
//  Widget settingsItemComponent(
//      {String title, String info, Color color, VoidCallback onPressed}) {
//    return InkWell(
//      onTap: onPressed,
//      child: Container(
//        padding: EdgeInsets.only(left: 25, right: 25),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Container(margin: EdgeInsets.only(top: 20)),
//            Text(
//              title,
//              style: TextStyle(
//                color: color,
//                fontSize: 18,
//                fontWeight: FontWeight.w500,
//              ),
//            ),
//            Container(margin: EdgeInsets.only(top: 5)),
//            Text(info, style: TextStyle(fontFamily: 'Roboto', fontSize: 14)),
//            Container(margin: EdgeInsets.only(top: 20)),
//          ],
//        ),
//      ),
//    );
//  }
//
//  displayDialog(
//      BuildContext context,
//     {
//        bool rename = false,
//      }) async {
//    return showDialog(
//      context: context,
//      builder: (context) {
//        return AlertDialog(
//          contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 1),
//          titlePadding: EdgeInsets.fromLTRB(20, 20, 10, 0),
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(20),
//          ),
//          title: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                rename
//                    ? 'Enter a name'
//                    : 'Do you really wanna delete your accout?',
//                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//              ),
//              if (rename)
//                TextField(
//                  scrollPadding: EdgeInsets.all(0),
//                  controller: inputController,
//                  decoration: InputDecoration(
//                    hintText: "Name",
//                    border: InputBorder.none,
//                  ),
//                ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.end,
//                children: <Widget>[
//                  FlatButton(
//                    child: Text('CANCEL'),
//                    onPressed: () => Navigator.pop(context),
//                  ),
//                  Container(margin: EdgeInsets.only(left: 15)),
//                  FlatButton(
//                    textColor: PALE_ORANGE,
//                    child: Text("OK"),
//                    onPressed: () {
//                      final name = inputController.text;
////                      if (name != "" || !rename) runMutation({"name": name});
//                      Navigator.pop(context);
//                    },
//                  )
//                ],
//              )
//            ],
//          ),
//        );
//      },
//    );
//  }
//}
//
//import 'package:cached_network_image/cached_network_image.dart';
///**
// * Author: Damodar Lohani
// * profile: https://github.com/lohanidamodar
// */
//
//import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//class SettingScreen extends StatelessWidget {
//  static final String path = "lib/src/pages/settings/settings1.dart";
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey.shade200,
//      appBar: AppBar(
//        elevation: 0,
//        brightness: Brightness.light,
//        iconTheme: IconThemeData(color: Colors.black),
//        backgroundColor: Colors.grey.shade200,
//        title: Text(
//          'Settings',
//          style: TextStyle(color: Colors.black),
//        ),
//      ),
//      body: Stack(
//        fit: StackFit.expand,
//        children: <Widget>[
//          SingleChildScrollView(
//            padding: const EdgeInsets.all(16.0),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Card(
//                  elevation: 8.0,
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10.0)),
//                  color: Colors.purple,
//                  child: ListTile(
//                    onTap: () {
//                      //open edit profile
//                    },
//                    title: Text(
//                      "John Doe",
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.w500,
//                      ),
//                    ),
//                    leading: CircleAvatar(
////                      backgroundImage: CachedNetworkImageProvider(avatars[0]),
//                    ),
//                    trailing: Icon(
//                      Icons.edit,
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//                const SizedBox(height: 10.0),
//                Card(
//                  elevation: 4.0,
//                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10.0)),
//                  child: Column(
//                    children: <Widget>[
//                      ListTile(
//                        leading: Icon(
//                          Icons.lock_outline,
//                          color: Colors.purple,
//                        ),
//                        title: Text("Change Password"),
//                        trailing: Icon(Icons.keyboard_arrow_right),
//                        onTap: () {
//                          //open change password
//                        },
//                      ),
//                      _buildDivider(),
//                      ListTile(
//                        leading: Icon(
//                          FontAwesomeIcons.language,
//                          color: Colors.purple,
//                        ),
//                        title: Text("Change Language"),
//                        trailing: Icon(Icons.keyboard_arrow_right),
//                        onTap: () {
//                          //open change language
//                        },
//                      ),
//                      _buildDivider(),
//                      ListTile(
//                        leading: Icon(
//                          Icons.location_on,
//                          color: Colors.purple,
//                        ),
//                        title: Text("Change Location"),
//                        trailing: Icon(Icons.keyboard_arrow_right),
//                        onTap: () {
//                          //open change location
//                        },
//                      ),
//                    ],
//                  ),
//                ),
//                const SizedBox(height: 20.0),
//                Text(
//                  "Notification Settings",
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.indigo,
//                  ),
//                ),
//                SwitchListTile(
//                  activeColor: Colors.purple,
//                  contentPadding: const EdgeInsets.all(0),
//                  value: true,
//                  title: Text("Received notification"),
//                  onChanged: (val) {},
//                ),
//                SwitchListTile(
//                  activeColor: Colors.purple,
//                  contentPadding: const EdgeInsets.all(0),
//                  value: false,
//                  title: Text("Received newsletter"),
//                  onChanged: null,
//                ),
//                SwitchListTile(
//                  activeColor: Colors.purple,
//                  contentPadding: const EdgeInsets.all(0),
//                  value: true,
//                  title: Text("Received Offer Notification"),
//                  onChanged: (val) {},
//                ),
//                SwitchListTile(
//                  activeColor: Colors.purple,
//                  contentPadding: const EdgeInsets.all(0),
//                  value: true,
//                  title: Text("Received App Updates"),
//                  onChanged: null,
//                ),
//                const SizedBox(height: 60.0),
//              ],
//            ),
//          ),
//          Positioned(
//            bottom: -20,
//            left: -20,
//            child: Container(
//              width: 80,
//              height: 80,
//              alignment: Alignment.center,
//              decoration: BoxDecoration(
//                color: Colors.purple,
//                shape: BoxShape.circle,
//              ),
//            ),
//          ),
//          Positioned(
//            bottom: 00,
//            left: 00,
//            child: IconButton(
//              icon: Icon(
//                FontAwesomeIcons.powerOff,
//                color: Colors.white,
//              ),
//              onPressed: () {
//                //log out
//              },
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//  Container _buildDivider() {
//    return Container(
//      margin: const EdgeInsets.symmetric(
//        horizontal: 8.0,
//      ),
//      width: double.infinity,
//      height: 1.0,
//      color: Colors.grey.shade400,
//    );
//  }
//}

class SettingScreen extends StatelessWidget {
  static final String path = "lib/src/pages/settings/settings3.dart";
  final TextStyle headerStyle = TextStyle(
    color: Colors.grey.shade800,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Settings',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ACCOUNT",
              style: headerStyle,
            ),
            const SizedBox(height: 10.0),
            Card(
              elevation: 0.5,
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[

                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/adis2.png'),


                    ),
                    title: Text("Endalk Belete"),
                    onTap: () {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: true,
                    title: Text("Private Account"),
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "PUSH NOTIFICATIONS",
              style: headerStyle,
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0,),
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: true,
                    title: Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0,),
              child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: (){},
            ),
              
            ),
            const SizedBox(height: 60.0),

          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}