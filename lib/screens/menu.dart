import 'package:astromap/theme/themes.dart';
import 'package:flutter/material.dart';

class MenuAstromap  extends StatelessWidget {
  const MenuAstromap ({super.key});


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const Text(
              'AstroMap',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Menu Botton
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {

              }
            ),

          ],
        )
        
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03,
          ),
          child: Column(
            children: [

              // logo
              Image.asset(
                "assets/img/LOGO-DIEGO-ORIGINAL1.png",
                width: screenWidth * 0.2,
              ),

              const SizedBox(height: 20),

              Text(
                "Un viaje a través del universo", 
                style: AppTheme.title.copyWith(
                  fontSize: screenWidth * 0.12,
                ),
                textAlign: TextAlign.center,
              ),
          
              Text(
                "¡Bienvenidos al maravilloso mundo de la astronomía! Sumérgete en la belleza y los misterios del universo en el que habitamos.", 
                style: AppTheme.subtitle,
                textAlign: TextAlign.center,
              ),

              // images
              for (var i = 1; i < 4; i++)...[
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/img/home/c$i.jpg",
                    width: screenWidth * 0.9,
                  ),
                ),
              ],
              
            ],
          ),
        ),
      )
    );
  }
}