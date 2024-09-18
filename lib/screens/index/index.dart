import 'package:astromap/theme/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
    
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
    
        const SizedBox(height: 20),
    
        Text(
          "Lo que hacemos", 
          style: AppTheme.subtitle,
          textAlign: TextAlign.left,
        ),
    
        Text(
          "Nuestro objetivo es despertar el interés y la curiosidad en nuevas personas brindando una experiencia única y cautivadora mientras exploran las maravillas del universo", 
          style: AppTheme.title,
          textAlign: TextAlign.left,
        ),
    
        const SizedBox(height: 20),
    
        Text(
          "Trabajamos para crear algo único", 
          style: AppTheme.title,
          textAlign: TextAlign.left,
        ),
    
        Text(
          "Aún estamos en una fase temprana de desarrollo, es posible que encuentres algunos errores o problemas en el sitio web. Por lo que te pedimos paciencia mientras trabajamos en solucionar cualquier problema que surja.", 
          style: AppTheme.subtitle,
          textAlign: TextAlign.left,
        ),
    
        const SizedBox(height: 20),
    
        //line
        Container(
          height: 1,
          color: Colors.white.withOpacity(0.5),
        ),
    
        const SizedBox(height: 20),
    
        Text(
          "Explora el universo con nosotros", 
          style: AppTheme.title,
          textAlign: TextAlign.left,
        ),
    
        Text(
          "Gracias por visitar nuestro sitio y ser parte de nuestra comunidad. Estamos emocionados de compartir nuestro proyecto contigo y esperamos que disfrutes de la experiencia de crear tu propio mapa.", 
          style: AppTheme.subtitle,
          textAlign: TextAlign.left,
        ),
    
        const SizedBox(height: 20),
    
        Container(
          height: 1,
          color: Colors.white.withOpacity(0.2),
        ),
    
        const SizedBox(height: 20),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset(
              "assets/img/LOGO-DIEGO-ORIGINAL1.png",
              width: screenWidth * 0.08,
            ),
            const SizedBox(width: 10),
            Text(
              "AstroMap",
              style: AppTheme.title.copyWith(
                fontSize: screenWidth * 0.05,
              ),
            )
          ],
        )
      ],
    );
  }
}