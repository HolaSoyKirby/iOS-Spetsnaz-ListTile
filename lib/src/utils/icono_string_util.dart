import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'car_rental' : Icons.car_rental,
  'web' : Icons.web,
  'backpack' : Icons.backpack
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color: Colors.blue);
}