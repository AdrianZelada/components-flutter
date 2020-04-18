import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Alert'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          onPressed: () {
            _openAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _openAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('First Dialog'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Open the first Alert widget'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>[          
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel')
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok')
            )
  
          ],
        );
      }
    ).then((data){

    });
    print('open ');
    
  }
}