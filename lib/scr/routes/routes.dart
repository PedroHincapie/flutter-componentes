import 'package:componentes/scr/pages/alert_page.dart';
import 'package:componentes/scr/pages/animated_container.dart';
import 'package:componentes/scr/pages/avatar_page.dart';
import 'package:componentes/scr/pages/card_page.dart';
import 'package:componentes/scr/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'alert': (BuildContext context) => AlertPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext contex) => AnimatedContainerPage()
  };
}
