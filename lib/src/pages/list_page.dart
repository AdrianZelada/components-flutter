import 'dart:async';

import 'package:flutter/material.dart';
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollListCtrl = new ScrollController();

  final List<int> _listName = new List();
  final _limit = 10;
  int itemList = 0;
  bool _isLoading = false;

  @override
  void initState() { 
    super.initState();
    this.loadImages();
    _scrollListCtrl.addListener(() {
      final condition = _scrollListCtrl.position.pixels == _scrollListCtrl.position.maxScrollExtent;
      if(condition){
        // loadImages();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollListCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: Stack(
        children: <Widget> [
          _createListViewBuilder(),
          _createLoading()
        ]
      )
      
      
    );
  }

  Widget _createListViewBuilder() {
    return RefreshIndicator(
        onRefresh: getPage,
        child: ListView.builder(
          itemCount: _listName.length,
          controller: _scrollListCtrl,
          itemBuilder: (BuildContext context, int index) {
            final image = _listName[index];
            return FadeInImage(
              placeholder: AssetImage('assets/original.gif'),
              image: NetworkImage('https://picsum.photos/500/300/?image=$image')
            );
          }
        ),
    );
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget>[ 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()

            ],
          ),
          SizedBox(height: 20.0,)
        ],
      );
      
    } else {
      return Container();
    }
  }


  void loadImages() {    
    for (var i = 0; i < _limit; i++) {
      itemList++;
      _listName.add(itemList);
    }
    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    return Timer(duration, requestImages);
  }

  requestImages() {
    _isLoading = false;
    _scrollListCtrl.animateTo(
      _scrollListCtrl.position.pixels + 100,
      duration: new Duration(milliseconds: 250),
      curve: Curves.easeIn
    );
    loadImages();
  }

  Future<Null> getPage() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listName.clear();
      itemList++;
      loadImages();
    });
    return Future.delayed(duration);
  }
}