import 'package:actividad4/views/imagen_viwes.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: ImagenView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });

        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.image),
            activeIcon: const Icon(Icons.image_search),
            label: 'Imagen',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            activeIcon: const Icon(Icons.person_3_outlined),
            label: 'Users',
            backgroundColor: colors.tertiary,
          ),
        ],
      ),
    );
  }
}
