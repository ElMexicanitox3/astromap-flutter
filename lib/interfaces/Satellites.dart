import 'dart:convert';

List<Satellite> satelliteFromJson(String str) => List<Satellite>.from(json.decode(str).map((x) => Satellite.fromJson(x)));

String satelliteToJson(List<Satellite> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Satellite{
  
  int id;
  String name;

  Satellite({
    required this.id,
    required this.name
  });

  factory Satellite.fromJson(Map<String, dynamic> json) => Satellite(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };

}