import 'package:flutter/material.dart';

import 'chat_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Color activeIconColor = Colors.white;
  Color inactiveIconColor = Colors.white60;
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey,
      height: 65.0,
      alignment: Alignment.center,
      child: new BottomAppBar(
        color: Colors.lightGreen[900],
        child: new Row(
          // alignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                new IconButton(
                    icon: Icon(
                      Icons.question_answer,
                      color: Colors.white60,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {});
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatPage()));
                    }),
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.white60),
                )
              ],
            ),
            Column(
              children: [
                new IconButton(
                  icon: Icon(
                    Icons.help,
                    color: Colors.white60,
                    size: 28,
                  ),
                  onPressed: null,
                ),
                Text(
                  'Requirements',
                  style: TextStyle(color: Colors.white60),
                )
              ],
            ),
            Column(
              children: [
                new IconButton(
                  icon: Icon(
                    Icons.local_shipping,
                    color: Colors.white60,
                    size: 28,
                  ),
                  onPressed: null,
                ),
                Text(
                  'Orders',
                  style: TextStyle(color: Colors.white60),
                )
              ],
            ),
            Column(
              children: [
                new IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white60,
                    size: 28,
                  ),
                  onPressed: null,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
