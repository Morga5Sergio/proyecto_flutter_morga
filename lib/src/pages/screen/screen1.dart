import 'package:flutter/material.dart';

class Sreen1 extends StatelessWidget {
  const Sreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BIENVENIDO A LA TIENDA", style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
            crearCard("images/pokemon.png",  "Pokemon", 150),
            crearCard("images/pokemon_01.png",  "Pokemon", 350)
          ],
        ),
    );
  }

  Widget crearCard(String imagen, String nombre, double tamanioWidth){
    return  Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Image(image: AssetImage(imagen), width: tamanioWidth,),
      ),
    );
  }
}

/*Container(
child: Image.asset("images/home.png"),
);*/
