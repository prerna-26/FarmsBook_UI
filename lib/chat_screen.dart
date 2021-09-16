import 'package:flutter/material.dart';
import 'package:ui/widgets/conversatilList.dart';

import 'bottomNavBar.dart';
import 'models/chatUsersModel.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL:
          "https://static1.gensler.com/uploads/hero_element/8143/thumb_desktop/thumbs/people_steve-bitterman_1024x576_1458583569_1024x576.jpg",
      time: "Now",
      frequency: "8",
    ),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL:
            "https://static2.gensler.com/uploads/hero_element/18161/thumb_desktop/thumbs/DavidBriefel_headshot_1629746969_1024x576.jpg",
        time: "Yesterday",
        frequency: "6"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL:
            "https://static1.gensler.com/uploads/hero_element/12004/thumb_desktop/thumbs/jim-crispino-1024x576-(002)_Edited_1547667081_1024x576.jpg",
        time: "31 Mar",
        frequency: "0"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL:
            "https://static1.gensler.com/uploads/hero_element/8054/thumb_desktop/thumbs/RobertFuller_headshot_1622582541_1024x576.jpg",
        time: "28 Mar",
        frequency: "0"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL:
            "https://static1.gensler.com/uploads/hero_element/16341/thumb_desktop/thumbs/people-Shivani%20Gour-2000x1125_1601673092_1024x576.jpg",
        time: "23 Mar",
        frequency: "0"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.west,
                      color: Colors.lightGreen[700],
                      size: 40,
                    ),
                    Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.lightGreen[700],
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  frequency: chatUsers[index].frequency,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                  countfrequency:
                      (chatUsers[index].frequency == '0') ? false : true,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
