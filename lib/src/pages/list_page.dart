import 'package:flutter/material.dart';
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final List<int> _listName = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: _createListViewBuilder(),
    );
  }

  Widget _createListViewBuilder() {
    print('test');
    return ListView.builder(
      itemCount: _listName.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listName[index];
        return FadeInImage(
          placeholder: AssetImage('assets/original.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$image')
        );
      }
    );
  }
}