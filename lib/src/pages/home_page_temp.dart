import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createItemShort(),
      ),
    );
  }


  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (var opt in options) {
      final item = ListTile(
        title: Text(opt),
      );
      list..add(item)
          ..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemShort(){
    var widgets = options.map((String opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt),
            subtitle: Text('$opt subTitle'),
            leading: Icon(Icons.account_balance_wallet),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}