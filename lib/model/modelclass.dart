// To parse this JSON data, do
//
//     final game = gameFromJson(jsonString);

import 'dart:convert';

List<Game> gameFromJson(String str) => List<Game>.from(json.decode(str).map((x) => Game.fromJson(x)));



class Game {
    Game({
        this.id,
        this.name,
        this.cover,
    });

    int ?id;
    String ?name;
    Cover ?cover;

    factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json["id"],
        name: json["name"],
        cover: json["cover"] == null ? null : Cover.fromJson(json["cover"]),
    );

    
    }

class Cover {
    Cover({
        this.id,
        this.url,
    });

    int ?id;
    String? url;

    factory Cover.fromJson(Map<String, dynamic> json) => Cover(
        id: json["id"],
        url: json["url"],
    );

    
}
