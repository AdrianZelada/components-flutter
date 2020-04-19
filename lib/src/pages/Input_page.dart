import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';
  String _email = '';
  String _birthdate = DateTime.now().toString();

  List<String> _teamSoccer = ['Bolivar', 'The Strongest', 'San Jose', 'Always Ride', 'Aurora'];
  String _teamSelected = 'Bolivar';

  TextEditingController _birthdateCtrl = new TextEditingController();
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
            _inputPassword(),
            Divider(),
            _inputDatepicker(context),
            Divider(),
            _inputDropdown(),
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



  Widget _inputPassword() {
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: 'Email',      
        helperText: 'What your Email? ',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),

      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _inputDatepicker(BuildContext context) {
    return TextField(
      controller: _birthdateCtrl,
      decoration: InputDecoration(
        labelText: 'Birthdate',      
        helperText: 'Birthdate? ',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        _showDatepicker(context);
      },
    );
  }

  void _showDatepicker(BuildContext context) async{
    FocusScope.of(context).requestFocus(new FocusNode());
    DateTime picker = await showDatePicker(
      context: context,
      initialDate: _convertStringToDateTime(_birthdate),
      // initialDate: DateTime.now(),
      firstDate: new DateTime(1986),
      lastDate: new DateTime(2027),
      locale: Locale('es', 'ES')
    );

    if(picker != null) {
      setState(() {
        _birthdate = '${picker.year.toString()}-${picker.month.toString()}-${picker.day.toString()}';
        _birthdateCtrl.text = _birthdate;
      });
    }
  }

  Widget _inputDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.arrow_drop_down_circle),
        SizedBox(width:  15.0),
        Expanded(
              child: DropdownButton(
              value: _teamSelected,
              items: _getDropdownItems(),
               onChanged:(value) {
                print(value);
                setState(() {
                  _teamSelected = value;
                });
              } 
            ),
        )
        ],
    );
    
    
  }

  List<DropdownMenuItem<dynamic>> _getDropdownItems() {

    List<DropdownMenuItem<dynamic>> list = new List();
    _teamSoccer.forEach((value) {
      list.add(DropdownMenuItem(
        child: Text(value),
        value: value,
      ));
    });

    // return _teamSoccer.map((String team) {
    //   return DropdownMenuItem(
    //     child: Text(team),
    //     value: team,
    //   );
    // }).toList();
    return list;
  }

  DateTime _convertStringToDateTime(String date) {
    final dateArray = date.split(' ');
    final finalDate = dateArray[0].split('-');
    return new DateTime(int.parse(finalDate[0]), int.parse(finalDate[1]), int.parse(finalDate[2]));
  }
}



