import 'package:astromap/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:astromap/widgets/widgets.dart';

class SatellitesList extends StatelessWidget {
  
  SatellitesList({super.key});

  // Inyectamos el controlador de SatellitesServices
  final SatellitesController controller = Get.put(SatellitesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Obx(() {

          // Mostrar indicador de carga si está cargando
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            );
          }

          // Si no hay satélites, mostrar un mensaje
          if (controller.satellites.isEmpty) {
            return const Center(
              child: Text('No hay satélites disponibles'),
            );
          }

          // Mostrar la lista de satélites
          return SingleChildScrollView(
            child: Column(
              children: [
                // Recorremos la lista de satélites proveniente del controlador
                for (var satellite in controller.satellites)...[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SatelliteCard(name: satellite.name),
                  ),
                ]
              ],
            ),
          );
          
        }),
      ),
    );
  }
}
