import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget{

   final opciones = [
    {"title": "Uno", "description": "Description 1", "icon": Icons.account_balance_outlined, "trailing": Icons.keyboard_arrow_right, "color": Color.fromARGB(255, 255, 0, 0)},
    {"title": "Dos", "description": "Description 2", "icon": Icons.access_alarm, "trailing": Icons.face_sharp, "color": Color.fromARGB(255, 255, 127, 0)},
    {"title": "Tres", "description": "Description 3", "icon": Icons.backpack, "trailing": Icons.deck, "color": Color.fromARGB(255, 255, 255, 0)},
    {"title": "Cuatro", "description": "Description 4", "icon": Icons.zoom_in, "trailing": Icons.keyboard, "color": Color.fromARGB(255, 0, 255, 0)},
    {"title": "Cinco", "description": "Description 5", "icon": Icons.face, "trailing": Icons.sanitizer, "color": Color.fromARGB(255, 0, 0, 255)}
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('listTitle'),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      )
    );
  }

  /*List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(var i in opciones){
      final tempWidget = ListTile(
        title: Text(i)
      );
      //lista.add(tempWidget);
      //lista.add(Divider());
      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }*/

List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            tileColor: item['color'],
            title: Text((item['title'])),
            subtitle: Text(item['description']),
            leading: Icon(item['icon']),
            trailing: Icon(item['trailing']),
            onTap: (){},
          ),
        ],
      );
    }).toList();
  }
}
