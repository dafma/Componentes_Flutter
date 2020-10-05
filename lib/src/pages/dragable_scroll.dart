import 'package:flutter/material.dart';


class DraggablePage extends StatelessWidget {
  const DraggablePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("DraggableScrollable Sheet"),
        elevation: 3,
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: [
          Center(child: Text("Hola Mundo", style: TextStyle(color: Colors.white),)),
          BottomModal(),

        ],
      ),
    );
  }
}


class BottomModal extends StatelessWidget {
  const BottomModal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      // scrollController es la clave
      builder: (context, scrollController){
        return Container(
          child: ListaItems( scrollController),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )
          ),
        );
      }
    );
  }
}

class ListaItems extends StatelessWidget {
  final ScrollController scrollController;

  ListaItems(this.scrollController);

  final items = List(40);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: this.scrollController,
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        title: Text('Iten $index')
      )
    );
  }
}