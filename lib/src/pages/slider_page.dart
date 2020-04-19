import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sizeImage = 50.0;
  bool _disabledSlider = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Column(
        children: <Widget>[
          Padding( 
            padding: EdgeInsets.only(
              top: 50.0
            )
          ),
          _createSlider(),
          _createCheckBox(),
          _createCheckBoxListTile(),
          _createSwitch(),
          SizedBox(
            height: 20.0,
          ),
          _createImage(),
        ],
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sizeImage,
      activeColor: Colors.indigoAccent,
      min: 10.0,
      max: 400.0,
      label: 'Size Images',
      onChanged: _disabledSlider ? null : (val) {
        setState(() {
          _sizeImage = val;
        });
      }
    );
  }

  Widget _createImage() {
    return Expanded(
      child: Image(
        image: NetworkImage('https://wallpaperaccess.com/full/2147772.jpg'),
        width: _sizeImage,
      )
    );
  }

  Widget _createCheckBox() {
    return Checkbox(
      value: _disabledSlider,
      onChanged: (value) {
        setState(() {
          _disabledSlider = value;
        });
      }
    );
  }

  Widget _createCheckBoxListTile() {
    return CheckboxListTile(
      title: Text('Disabled Slider'),
      value: _disabledSlider,
      onChanged: (value) {
        setState(() {
          _disabledSlider = value;
        });
      }
    );
  }


  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Disabled Slider'),
      value: _disabledSlider,
      onChanged: (value) {
        setState(() {
          _disabledSlider = value;
        });
      },
    );
  }
}