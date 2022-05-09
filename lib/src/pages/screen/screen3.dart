import 'package:flutter/material.dart';

class ListaPokemon {
  String? nombrePokemon;
  String? tipo;
  double? altura;
  ListaPokemon({this.nombrePokemon, this.tipo, this.altura});
}

var listaPokemon = <ListaPokemon>[
  ListaPokemon(nombrePokemon: "Bulbasaur", tipo: "Bulbasaur pequeño", altura:0.71),
  ListaPokemon(nombrePokemon: "Charmander", tipo: "Charmander pequeño", altura:0.90),
  ListaPokemon(nombrePokemon: "Picachu", tipo: "picachu pequeño", altura:0.60),
  ListaPokemon(nombrePokemon: "Charmeleon", tipo: "Charmeleon medio", altura:2),
  ListaPokemon(nombrePokemon: "Charizard", tipo: "Charizard grande", altura:3.5),
  ListaPokemon(nombrePokemon: "Piyoto", tipo: "piyoto pequeño", altura:0.3),
  ListaPokemon(nombrePokemon: "Miu", tipo: "Miu especial", altura:0.62),
];
class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Pokemons"),
      ),
      body: Center(
        child: Container(
          child: DataTable(
            sortColumnIndex: 2,
            sortAscending: false,
            columns:<DataColumn> [
              DataColumn(
                  label: Text("Nombre"),
                  numeric: false,
                  onSort: (i, b) {
                    setState(() {
                      listaPokemon.sort((a, b)=> a.nombrePokemon!.compareTo(b.nombrePokemon!));
                    });
                  }
              ),
              DataColumn(
                  label: Text("Tipo"),
                  numeric: false,
                  onSort: (i, b) {
                    setState(() {
                      listaPokemon.sort((a, b)=> a.tipo!.compareTo(b.tipo!));
                    });
                  }
              ),
              DataColumn(
                label: Text("Altura"),
                numeric: true,
                onSort: (i, b) {
                  setState(() {
                    listaPokemon.sort((a, b)=> a.altura!.compareTo(b.altura!));
                  });
                },
              ),
            ],
            rows: listaPokemon
                .map(
                  (x) => DataRow(
                  cells: [
                    DataCell(Text(x.nombrePokemon!)),
                    DataCell(Text(x.tipo!)),
                    DataCell(Text((x.altura).toString())),
                  ]
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
