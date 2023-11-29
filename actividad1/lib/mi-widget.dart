import 'package:flutter/material.dart';

class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('¡Hola Mundo!');
          },
          child: Text('Presionar'),
        ),
      ),
    );
  }
}
