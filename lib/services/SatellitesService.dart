import 'package:get/get.dart';
import '../interfaces/satellites.dart';
import 'package:http/http.dart' as http;

class SatellitesServices extends GetxController {
  var isLoading = false.obs;
  var satellites = <Satellite>[].obs;  // Lista observable

  @override
  Future<void> onInit() async {
    super.onInit();
    await getSatellites();  // Asegúrate de esperar a la carga de los satélites
  }

  Future<void> getSatellites() async {
    try {
      isLoading.value = true;

      http.Response response = await http.get(
        Uri.parse('https://astromap.app/api/v1.0/satellites/'),
      );

      if (response.statusCode == 200) {
        satellites.value = satelliteFromJson(response.body);  // Usamos el setter de la lista observable
      } else {
        print('Error: ${response.statusCode}');
      }

    } catch (e) {
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
