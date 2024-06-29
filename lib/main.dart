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
      body: Column(
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



        ],
      )
    );
  }
}