import 'package:actividad3/models/model_receta.dart';
import 'package:flutter/material.dart';

class MostrarReceta extends StatelessWidget {
  final Receta carruselImages;
  const MostrarReceta({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        elevation: 0,
        title: Text(carruselImages.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width:double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(placeholder: AssetImage("assets/loading1.gif"), 
                image: AssetImage(carruselImages.image),
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    carruselImages.name, 
                    style: const TextStyle(fontWeight: FontWeight.bold, 
                    fontSize: 35, color: Colors.white,
                    ),
                    ),
                  SizedBox(height: 15),
                  const Text("Descripcion", style: TextStyle(fontWeight: FontWeight.bold, 
                    fontSize: 25, color: Colors.white,
                    ),
                    ),
                   const SizedBox(height: 18),
                  Text(
                    carruselImages.descripcion,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
