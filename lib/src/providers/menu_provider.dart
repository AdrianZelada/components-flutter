import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic> options = []; 
  _MenuProvider() {
    // loadMenu();
  }

  Future<List<dynamic>> loadMenu() async{
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map responseMap = json.decode(response);
    options = responseMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();