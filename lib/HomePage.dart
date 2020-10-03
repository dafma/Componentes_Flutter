import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {

  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children : _createItems()
        )
    );
  }


  List<Widget> _createItems(){
    List<Widget> lista = List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista.add(tempWidget);
    }
    return lista;
  }
}