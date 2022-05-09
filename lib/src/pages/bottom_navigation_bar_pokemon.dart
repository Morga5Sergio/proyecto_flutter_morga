
import 'package:flutter/material.dart';
import 'package:proyecto_flutter_morga/src/pages/screen/screen1.dart';
import 'package:proyecto_flutter_morga/src/pages/screen/screen2.dart';
import 'package:proyecto_flutter_morga/src/pages/screen/screen3.dart';

class BottomNavigationBarPokemon extends StatefulWidget {
  const BottomNavigationBarPokemon({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPokemon> createState() => _BottomNavigationBarPokemonState();
}

class _BottomNavigationBarPokemonState extends State<BottomNavigationBarPokemon> {
  final tabs = [
    Center(child: Sreen1()),
    Center(child: Sreen2()),
    Center(child: Screen3()),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        selectedFontSize: 19.0,
        unselectedFontSize: 14.0,
        iconSize: 30.0,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio"
          )
          ,BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: "imagenes"
          )
          ,BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Lista"
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
