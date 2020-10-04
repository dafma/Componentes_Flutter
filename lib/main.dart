import 'package:flutter/material.dart';

import 'package:listacomponents/src/pages/HomePage.dart';
import 'package:listacomponents/src/pages/alert_page.dart';
import 'package:listacomponents/src/pages/avatar_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista Componentes ',
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/'      : ( BuildContext context ) => HomePage(),
        'alert'  : (BuildContext context  ) => AlertPage(),
        'avatar' : ( BuildContext context ) => AvatarPage(),
      },
      onGenerateRoute: ( RouteSettings settings){
          print("Ruta llamada: ${ settings.name }");

          return MaterialPageRoute(
            builder: ( BuildContext context ) => AlertPage(), 
          );
      },
    );
  }
}