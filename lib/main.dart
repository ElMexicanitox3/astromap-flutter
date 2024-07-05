import 'dart:math';

import 'package:astromap/theme/themes.dart';
import 'package:astromap/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().def,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/img/LOGO-DIEGO-ORIGINAL1.png", width: size.width * 0.2),
            Text(
              "AstroMap",
              style: TextStyle(
                fontSize: size.width * 0.14,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20),

            Text("Iniciar sesión", style: TextStyle(fontSize: size.width * 0.08)),

            SizedBox(height: 20),
            TextFieldCustom(hintText: "Nombre de usuario"),
            SizedBox(height: 20),
            TextFieldCustom(hintText: "Contraseña"),

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)
              ),
              onPressed: () {},
              child: Text("Iniciar sesión", style: TextStyle(color: Colors.black)),
            ),

            SizedBox(height: 20),

            TextButton(
              onPressed: () {},
              child: Text("¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 20),


            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: generateGradientColors()
                      )
                    )
                  ),
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 200),
                    painter: MoonPainter(),
                  ),
                  // AnimatedMoon(),
                ],
              ),
            ),


          ],
        ),
      )
    );
  }
}

List<Color> generateGradientColors() {
  List<Color> colors = [];
  for (int i = 0; i <= 15; i++) {
    double opacity = 0.05 + (i * 0.01);
    colors.add(Colors.white.withOpacity(opacity));
  }
  return colors;
}

class MoonPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final Path path = Path()
      // ..moveTo(0, size.height)
      // ..quadraticBezierTo(size.width / 2, 0, size.width, size.height)
      // ..lineTo(0, size.height)
      // ..close();
      ..moveTo(-60, (size.height + 50))
      ..quadraticBezierTo( (size.width)/ 2, 30, (size.width + 60), (size.height+50))
      ..lineTo(0, (size.height + 50))
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}