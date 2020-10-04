import 'package:flutter/material.dart';

import 'package:listacomponents/src/routes/routes.dart';

import 'package:listacomponents/src/pages/alert_page.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista Componentes ',
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings){
          print("Ruta llamada: ${ settings.name }");

          return MaterialPageRoute(
            builder: ( BuildContext context ) => AlertPage(), 
          );
      },
    );
  }
}