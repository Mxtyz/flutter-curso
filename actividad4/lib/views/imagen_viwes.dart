import 'package:flutter/material.dart';

class ImagenView extends StatefulWidget {
  const ImagenView({super.key});

  @override
  State<ImagenView> createState() => _ImagenViewState();
}

class _ImagenViewState extends State<ImagenView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Current imagen: $count'),
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Icon(Icons.add))
        ],
      ),
    );
  }
}
