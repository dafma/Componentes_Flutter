import 'package:flutter/material.dart';
import 'package:listacomponents/src/pages/HomePage.dart';
import 'package:listacomponents/src/pages/alert_page.dart';
import 'package:listacomponents/src/pages/avatar_page.dart';
import 'package:listacomponents/src/pages/dragable_scroll.dart';


Map<String, WidgetBuilder> getAplicationRoutes(){

  return <String, WidgetBuilder>{
    '/'      : ( BuildContext context ) => HomePage(),
    'alert'  : (BuildContext context  ) => AlertPage(),
    'avatar' : ( BuildContext context ) => AvatarPage(),
    'avatar' : ( BuildContext context ) => AvatarPage(),
    'draggable' : (BuildContext context) => DraggablePage(),
  };
}

