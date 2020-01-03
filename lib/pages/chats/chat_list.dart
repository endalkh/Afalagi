import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/Asserts.dart';
import 'package:delalaw/constants/colors.dart';
import 'package:delalaw/constants/constants.dart';
import 'package:delalaw/pages/appbar/AppBar.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  static final String path = "lib/src/pages/misc/chatui.dart";

  @override
  Widget build(BuildContext context) {
    createTile(Friend friend) => Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: COLOR_PRIMARY, width: 1.0),
        ),
      ),
      child: GestureDetector(
        onTap: () {
Navigator.pushNamed(context, CHAT);
        },

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 6.0, 16.0, 6.0),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(friend.image),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        friend.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        friend.msgTime,
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    friend.message,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 42.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF414350),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: IconButton(
                    color: Color(0xFF5791FB),
                    icon: Icon(Icons.call),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 42.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF414350),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: IconButton(
                    color: Color(0xFF5791FB),
                    icon: Icon(Icons.videocam),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );

    final liste = SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: friends.map((book) => createTile(book)).toList(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: BG_COLOR,
      appBar: headerNav(title: "Chat list"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF414350),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.0,
                    spreadRadius: -1.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      OnlinePersonAction(
                        personImagePath: avatars[0],
                        actColor: Colors.greenAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[1],
                        actColor: Colors.yellowAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[2],
                        actColor: Colors.redAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[3],
                        actColor: Colors.yellowAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[4],
                        actColor: Colors.greenAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[5],
                        actColor: Colors.greenAccent,
                      ),
                      OnlinePersonAction(
                        personImagePath: avatars[6],
                        actColor: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Text(
              'Newsfeed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search your friends...',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                  filled: true,
                  fillColor: COLOR_PRIMARY,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Flexible(
            child: liste,
          ),
        ],
      ),
    );
  }
}

class OnlinePersonAction extends StatelessWidget {
  final String personImagePath;
  final Color actColor;
  const OnlinePersonAction({
    Key key,
    this.personImagePath,
    this.actColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            padding: const EdgeInsets.all(3.4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                width: 2.0,
                color: const Color(0xFF558AED),
              ),
            ),
            child: Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(
                    image: CachedNetworkImageProvider(personImagePath),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: actColor,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                width: 1.0,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Friend {
  String name, image, message, msgTime;

  Friend(this.name, this.image, this.message, this.msgTime);
}

final List<Friend> friends = [
  Friend('hana', avatars[0], 'Hello, how are you?', '1 hr.'),
  Friend('elsa', avatars[1], 'Hello, how are you?', '1 hr.'),
  Friend('james', avatars[2], 'Hello, how are you?', '1 hr.'),
  Friend('endalk', avatars[3], 'Hello, how are you?', '1 hr.'),
  Friend('Setafan', avatars[4], 'Hello, how are you?', '1 hr.'),
  Friend('Sami', avatars[6], 'Hello, how are you?', '1 hr.'),
  Friend('jhon', avatars[6], 'Hello, how are you?', '1 hr.'),
];