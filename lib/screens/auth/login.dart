import 'package:astromap/screens/auth/layout/auth_layout.dart';
import 'package:astromap/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AuthLayout(widget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
          SizedBox(height: size.height * 0.1),
    
          Image.asset("assets/img/LOGO-DIEGO-ORIGINAL1.png", width: size.width * 0.2),
          Text(
            "AstroMap",
            style: TextStyle(
              fontSize: size.width * 0.14,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 20),
    
          Text("Iniciar sesión", style: TextStyle(fontSize: size.width * 0.08)),
    
          const SizedBox(height: 20),
          const TextFieldCustom(hintText: "Nombre de usuario"),
          const TextFieldCustom(hintText: "Contraseña"),
    
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
    
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20)
            ),
            onPressed: () {},
            child: const Text("Iniciar sesión", style: TextStyle(color: Colors.black)),
          ),
    
          const SizedBox(height: 20),
    
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.white)),
          // ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}