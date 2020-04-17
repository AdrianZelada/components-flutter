import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes_pages.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components',
      debugShowCheckedModeBanner: false,
      // home: HomePageTemp(),
      // home: HomePage(),
      initialRoute: '/',
      // routes: <String, WidgetBuilder> {
      //   '/'       : (context) => HomePage(),
      //   'alert'   : (context) => AlertPage(),
      //   'avatar'   : (context) => AvatarPage(),
      // },
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('route ${ settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) {
            return AlertPage();
          } 
        );
      },
    );
  }
}