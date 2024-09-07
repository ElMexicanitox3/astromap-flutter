import 'package:astromap/interfaces/interfaces.dart';
import 'package:flutter/material.dart';
import 'package:astromap/widgets/widgets.dart';



class SatellitesList extends StatelessWidget {
  
  SatellitesList({super.key});

  final List<Satellite> satellites = [
    Satellite(id: 1, name: "x"),
    Satellite(id: 2, name: "y"),
    Satellite(id: 3, name: "z"),
    Satellite(id: 4, name: "w"),
    Satellite(id: 5, name: "v"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              // recorremos la lista de satelites
              for (var satellite in satellites)...[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SatelliteCard(name: satellite.name),
                ),
              ]
              
            ],
          ),
        ),
      )
    );
  }
}