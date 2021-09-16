import 'package:flutter/material.dart';
import 'package:ui/models/detail_screen.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        "Trending",
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ],
  );

  final stories = Expanded(
      child: new Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.only(right: 15),
            child: ClipOval(
                child: GestureDetector(
                    child: Image.network(
                      'https://static.fibre2fashion.com/Newsresource/images/270/shutterstock-281842232_281960.jpg',
                      width: 50,
                      height: 50,
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen();
                      }));
                    })),
          ),
        ],
      ),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
