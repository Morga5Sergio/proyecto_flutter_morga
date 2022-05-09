import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:proyecto_flutter_morga/src/models/pokemon.dart';
class PokemonProvider {
  late final PokeHub pokeHub;
  final String _url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  //final String _languaje = "es_ES";
  int _popularesPage = 0;
  bool _cargando = false;

  List<Pokemon> _populares = [];
  // Controlador para un Stream
  //final _popularesStreamController = StreamController<List<Pelicula>>.broadcast();

  // Meter pelicualas Al Stream ya esta
  /*Function(List<Pelicula>) get popularesSink => _popularesStreamController.sink.add;
  Stream<List<Pelicula>> get popularesStream => _popularesStreamController.stream;*/

  /*void disposeStreams(){
    _popularesStreamController.close();
  }*/

/*  Future<List<Pokemon>> getEncines() async {
    final url = Uri.http(_url, "");
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    print("Morga");
    print(pokeHub.toJson());
    // return await _procesarRespuesta(url);
    return [];
  }*/

  Future<List<Pokemon>> fetchPost() async {
    final response =
      await http.get(Uri.parse("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"));

    if (response.statusCode == 200) {
      // Si el servidor devuelve una repuesta OK, parseamos el JSON
      print(response.body);
      final decodedData = json.decode(response.body);
      final peliculas = PokeHub.fromJson(decodedData['pokemon']);
      return peliculas.pokemon;
    } else {
      // Si esta respuesta no fue OK, lanza un error.
      throw Exception('Failed to load post');
    }
  }
  // El future solo se puede enviar una sola vez
 /* Future<List<Pelicula>> getPopulares() async {
    if(_cargando) return [];

    _cargando = true;
    print("Cargando siguiente");
    _popularesPage++;
    final url = Uri.https(_url, "3/movie/popular", {
      "api_key": _apikey,
      "language": _languaje,
      "page":_popularesPage.toString()
    });
    final resp = await _procesarRespuesta(url);
    _populares.addAll(resp);
    popularesSink(_populares);
    _cargando = false;
    return resp;
    // return await _procesarRespuesta(url);
  }*/

  Future<List<Pokemon>> _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    //final peliculas = Peliculas.fromJsonList(decodedData['results']);
    // return peliculas.items;
    return [];
  }
}




/*
Future<List<Pelicula>> getEncines() async {
  final url = Uri.https(_url, "3/movie/now_playing", {
    "api_key": _apikey,
    "language": _languaje
  });

  final resp = await http.get(url);
  final decodedData = json.decode(resp.body);
  */
/*print("Prueba");
    print(decodedData['results']);*//*


  final peliculas = Peliculas.fromJsonList(decodedData['results']);
  //print(peliculas.items[0].posterPath);
  */
/*final decodedData = json.decode(resp.body);
    final peliculas = Peliculas.fromJsonList(decodedData['result' ]);
    print(peliculas.items[1].title);*//*

  return peliculas.items;
}*/
