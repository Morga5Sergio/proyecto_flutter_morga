import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:proyecto_flutter_morga/src/models/pokemon.dart';
class PokemonProvider {
  late final PokeHub pokeHub;

  List<Pokemon> _populares = [];


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

  Future<List<Pokemon>> _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    //final peliculas = Peliculas.fromJsonList(decodedData['results']);
    // return peliculas.items;
    return [];
  }
}

