import 'package:flutter/material.dart';
import 'package:pr04/src/providers/menu_provider2.dart';
import 'package:pr04/src/utils/icono_string_util.dart';
import './description_page.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
  // Future Builder
  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _listaItems(snapshot.data, context),
      );
    },
  );
}

List <Widget> _listaItems (List<dynamic> data, BuildContext context){
 final List<Widget> opciones = [];

 data.forEach((opt){
   final widgetTemp = ListTile(
     title: Text(opt['texto']),
     leading: getIcon(opt['icon']),
     trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
     onTap: (){
       final route = MaterialPageRoute(builder: (context) => DescriptionPage());
       Navigator.push(context, route);
     }
   );
   opciones..add(widgetTemp)
           ..add(Divider());
 });
 return opciones;
}
}