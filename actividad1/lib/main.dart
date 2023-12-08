import 'package:flutter/material.dart';
import 'mi-widget.dart'; // Asegúrate de importar correctamente

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Aplicación Flutter'),
        ),
        body: Center(
          child: MiWidget(),
        ),
      ),
    );
  }
}
