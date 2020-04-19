import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes_pages.dart';

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

      localizationsDelegates: [
   // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Hebrew
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
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