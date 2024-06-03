import 'package:flutter/material.dart';
import '../screen/pergunta_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: PerguntaApp(),
    );
  }
}
