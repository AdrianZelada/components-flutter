import 'package:components/src/pages/Input_page.dart';
import 'package:components/src/pages/animate_container_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:flutter/material.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';

Map <String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder> {
    '/'       : (context) => HomePage(),
    'alert'   : (context) => AlertPage(),
    'avatar'  : (context) => AvatarPage(),
    'card'    : (context) => CardPage(),
    'animatedContainer' : (context) => AnimateContainerPage(),
    'inputs'  : (context) => InputPage()
  };
}