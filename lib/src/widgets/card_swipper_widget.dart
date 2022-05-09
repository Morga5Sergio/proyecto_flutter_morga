
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:proyecto_flutter_morga/src/models/pokemon.dart';


class CardSwipperWidget extends StatelessWidget {
  final List<Pokemon> pokemones;
  //CardSwipperWidget({Key? key, this.peliculas}) : super(key: key);
  CardSwipperWidget({required this.pokemones});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    // _screenSize.
    return Container(
      padding: EdgeInsets.only(top: 1, left: 30),
      child: Swiper(
        itemHeight: _screenSize.height * 0.4,
        itemWidth: _screenSize.width * 0.8,
        itemBuilder: (BuildContext context,int index){
          return
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            //child: Image.network("http://via.placeholder.com/350x150",
            child: FadeInImage(
              placeholder: AssetImage("images/no-image.jpg"),
              image: NetworkImage(

                  pokemones[index].getPosterImg()) , fit: BoxFit.cover,),
             );
        },
        itemCount: pokemones.length,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
