// ignore_for_file: unused_local_variable

import 'package:actividad3/data/data_receta.dart';
import 'package:actividad3/models/model_receta.dart';
import 'package:actividad3/pages/mostrar_receta.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        centerTitle: true,
        title: Text("POKEDEX"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          CarouselSlider.builder(
            itemCount: carruselImages.length,
            itemBuilder: (context, index, realIndex) {
              final carruselImage = carruselImages[index];
              return CardImages(
                carruselImages: carruselImages[index],
              );
            },
            options: CarouselOptions(
              height: 350.0,
              // autoPlay: true,
              // autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              // autoPlayInterval: Duration(seconds: 0),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class CardImages extends StatelessWidget {
  final Receta carruselImages;
  const CardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselImages.copy();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MostrarReceta(carruselImages: carruselImages)));
          },
          child: FadeInImage(
            placeholder: AssetImage("assets/loading1.gif"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
