class PokeHub {
  List<Pokemon> pokemon = [];

  PokeHub.fromJson(List<dynamic> json) {
    if(json == null) return;
    for(var item in json){
      final poke = Pokemon.fromJsonMap(item);
      pokemon.add(poke);
    }
  }

}

class Pokemon {
  int? id;
  String? num;
  String? name;
  String? img;
  List<String>? type;
  String? height;
  String? weight;
  String? candy;
  int? candyCount;
  String? egg;
  String? spawnChance;
  String? avgSpawns;
  String? spawnTime;
/*  List<double>? multipliers;
  List<String>? weaknesses;*/
  //List<NextEvolution>? nextEvolution;

  Pokemon(
      {this.id,
        this.num,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
   /*     this.multipliers,
        this.weaknesses,*/
       // this.nextEvolution
      });

  Pokemon.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    spawnChance = json['spawn_chance'].toString();
    avgSpawns = json['avg_spawns'].toString();
    spawnTime = json['spawn_time'];

  }
  getPosterImg(){
    if(img == null){
      return "https://app.sectorcnc.com/storage/users/muntada/1611230007_6DNEAoq21xBbFxI1.jpeg";
    }else {
      print("Imagen Morga");
      print(img);
      return img;
      // return "https://image.tmdb.org/t/p/w500/$img";
    }
  }
}
