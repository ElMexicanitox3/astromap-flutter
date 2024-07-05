import 'package:astromap/screens/auth/layout/auth_layout.dart';
import 'package:astromap/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AuthLayout(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.15),
          Text("Registrarse", style: TextStyle(fontSize: size.width * 0.08)),
          const SizedBox(height: 20),
          const TextFieldCustom(hintText: "Nombre de usuario"),
          const TextFieldCustom(hintText: "Correo electrónico"),
          const TextFieldCustom(hintText: "Contraseña"),
          const TextFieldCustom(hintText: "Confirmar contraseña"),
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
            child: const Text("Registrarse", style: TextStyle(color: Colors.black)),
          ),
        ],
      ) 
    );
  }
}