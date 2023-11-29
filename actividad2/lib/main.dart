import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sedes Universidad de Los Lagos'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              buildCard(
                'Sede Ulgaos Osorno',
                'https://www.ulagos.cl/wp-content/uploads/2023/07/port-ULagos.jpg',
              ),
              buildCard(
                'Sede Ulagos Puerto Montt',
                'https://www.ulagos.cl/wp-content/uploads/2020/12/Chinquihue-scaled.jpg',
              ),
              buildCard(
                'Sede Ulagos Chiloe',
                'https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-scaled.jpg',
              ),
              // Puedes agregar más tarjetas según sea necesario
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String description, String imageUrl) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: [
          Container(
            height: 150.0, // Establece la altura deseada de la tarjeta
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height:
                  150.0, // Altura máxima de la imagen para evitar estiramiento
              width: double
                  .infinity, // Ajusta el ancho de la imagen al ancho de la tarjeta
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}