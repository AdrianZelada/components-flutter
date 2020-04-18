import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs Pages'),
      ),
      body: ListView(
        children: <Widget>[
            _inputText(),
            Divider(),
            _inputEmail(),
            Divider(),
            _listenName()
          ],
        ),
      );
  }
  

  Widget _inputText() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        counter: Text('Lenght ${_name.length.toString() }'),
        labelText: 'Name',
        hintText: 'Write your Name',
        helperText: 'What your Name? ',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_box)


      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }


  Widget _listenName() {
    return ListTile(
      title: Text('Name is : ${_name}, Emai: ${_email}'),
    );
  }
  
  Widget _inputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: 'Email',      
        helperText: 'What your Email? ',
        suffixIcon: Icon(Icons.atm),
        icon: Icon(Icons.email)
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }
}
