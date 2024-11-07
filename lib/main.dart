
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_ui.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp UI",
      home: HomePageWhatsapp(),
    );
  }
}