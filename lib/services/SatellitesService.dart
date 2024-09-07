import '../interfaces/satellites.dart';
import 'package:http/http.dart' as http;


class SatellitesServices {


  Future<List<Satellite>> getSatellites() async {

    await http.get(
      Uri.parse('https://astromap.app/api/v1.0/satellites/')
    ).then((response) {
      print(response.body);
    });

    return [
      Satellite(id: 1, name: "x")
    ];

  }







}