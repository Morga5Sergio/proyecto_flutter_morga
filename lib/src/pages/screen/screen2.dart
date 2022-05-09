import 'package:flutter/material.dart';
import 'package:proyecto_flutter_morga/src/models/pokemon.dart';
import 'package:proyecto_flutter_morga/src/providers/pokemon_provider.dart';
import 'package:proyecto_flutter_morga/src/widgets/card_swipper_widget.dart';

class Sreen2 extends StatelessWidget {
  Sreen2({Key? key}) : super(key: key);

  final pokemonProvider = PokemonProvider();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          crearCard("images/pokemon.png",  "Pokemon", 150),
          _swiperCards(),
          //_footer(),
        ],
      )
    );
  }

  Widget _swiperCards() {
    return FutureBuilder(
      future: pokemonProvider.fetchPost(),
      //initialData: [],
      builder: (context, AsyncSnapshot<List<Pokemon>> snapshot){
        if(snapshot.hasData){
          return CardSwipperWidget(
            pokemones: snapshot.data!,
          );
        }else{
          return Container(
              height: 200,
              child: Center(child :CircularProgressIndicator(),)
          ) ;
        }
      },
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
