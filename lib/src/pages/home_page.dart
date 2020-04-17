import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icons_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {

    return FutureBuilder(
      future: menuProvider.loadMenu(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> list) {
        return ListView(
              children: _createItems(list.data, context),
            );
      },
    );

    // menuProvider.loadMenu().then((options) {
    //   print('options');
    //   print(options);
    // });
    
  }


  List<Widget> _createItems(List<dynamic> list, BuildContext context) {

    List<Widget> items = [];

    list.forEach((dynamic item){
      final widget = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.arrow_right),
        onTap: () {

          // final route = MaterialPageRoute(
          //   builder: (context) {
          //     return new AlertPage();
          //   }
          // );
          // Navigator.push(context, route);
          Navigator.pushNamed(context, item['ruta']);
        },
      );
      items..add(widget)
          ..add(Divider());
    });
    return items;
  }
}