
import 'package:flutter/material.dart';
import 'package:proyecto_flutter_morga/src/pages/bottom_navigation_bar_pokemon.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarPokemon(),
    );
  }
}