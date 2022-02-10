
class Player {
  String? tag;
  String? nom;
  int trophee;
  int warStar =0;
  int attaqueReussi =0;
  int defense =0;
  int dons = 0;

  Player ({
    required this.tag,
    this.nom,
    this.trophee =0,
    this.warStar=0,
    this.attaqueReussi = 0,
    this.defense=0,
    this.dons=0
});

  static Player FromJson(Map<String, dynamic> json){
    return Player(
      tag: json["tag"],
      nom: json["name"],
      trophee: json["trophies"],
      warStar: json["warStars"],
      attaqueReussi: json["attackWins"],
      defense: json["defenseWins"],
      dons: json["donations"],
    );
    }


}