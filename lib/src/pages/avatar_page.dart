import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://previews.123rf.com/images/damedeeso/damedeeso1501/damedeeso150100015/35106544-cool-french-bulldog-with-sunglasses-wearing-a-black-afro-look-curly-wig-smiling-at-you-isolated-on-w.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 10.0
            ),
            child: CircleAvatar(
              child: Text('AZ'),
              backgroundColor: Colors.blueGrey,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://i.imgur.com/vq2dQ.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}