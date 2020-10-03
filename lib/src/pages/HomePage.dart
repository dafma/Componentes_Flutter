import 'package:flutter/material.dart';
import 'package:listacomponents/src/providers/menu_provider.dart';
 
class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: _lista(),

    );
  }

  Widget _lista(){

    print(menuProvider.opciones);

    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget>_listaItems() {
    return [
      ListTile( title: Text("Hola Mundo"),),
      ListTile( title: Text("Hola Mundo"),),
      ListTile( title: Text("Hola Mundo"),),
    ];
  }


}


/*
  List<Widget> crearItemsCorta(){
    //regresar una nueva lista
    var widgets = opciones.map((item){

      return Column(
        children: [
          ListTile(
            title: Text(item  + '!'),
            subtitle: Text("Cualquier Cosa"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

    return widgets;
  }
*/ 