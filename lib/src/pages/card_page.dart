import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card1(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
          SizedBox(height: 20.0,),
          _card2(),
        ],
      ),
    );
  }

  Widget _card1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('First Card'),
            leading: Icon(Icons.access_alarm),
            subtitle: Text(' asdfasd fasdf asdf asdfasdfjahsdfakl jsdfljkhuierq woezxmvnzmxcvna lsduf dafs dfjashdf kjashdfk asdfjashdflk hewuiqrhqwiue faslkjd fasljdkfhuwier asdf ksdbzcxnmvbksdahfalk'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: null,
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: null,
                child: Text('OK')
              ),
            ],
          )
        ],
      )
    );
  }

  Widget _card2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'),
            image: NetworkImage('https://images.hdqwalls.com/wallpapers/storm-night-lightning-in-city-4k-o4.jpg'),
            fadeInDuration: Duration(milliseconds: 500),
            height: 210.0,
            fit: BoxFit.fitWidth,
          ),
          // Image(
          //   image: NetworkImage('https://images.hdqwalls.com/wallpapers/storm-night-lightning-in-city-4k-o4.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Text random'),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 5.0)
          )
        ]
        // color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card
      ),
    );
  }

  
}