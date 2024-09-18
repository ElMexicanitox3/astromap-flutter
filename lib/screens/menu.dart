import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:astromap/controllers/dropdown_menu.dart';

class MenuAstromap  extends StatelessWidget {

  final Widget body;

  const MenuAstromap ({super.key, required this.body});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    final DropdownMenuController dropdownMenu = Get.put(DropdownMenuController());
    
    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                Image.asset(
                  "assets/img/LOGO-DIEGO-ORIGINAL1.png",
                  width: screenWidth * 0.08,
                ),
                const SizedBox(width: 10),
                const Text(
                  'AstroMap',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Menu Botton
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                dropdownMenu.toggle(screenWidth * 0.7);
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
  
              // NO hace animación
              // Animación de abrir/cerrar usando AnimatedContainer
              Obx(() => AnimatedContainer(
                duration: const Duration(milliseconds: 300), // Duración de la animación
                curve: Curves.easeInOut, // Curva de animación para suavizar
                color: Colors.amber,
                width: screenWidth,
                height: dropdownMenu.height.value, // Altura controlada por GetX
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Inicio'),
                        onTap: () {
                          // Cerrar menú
                          dropdownMenu.toggle(0.0);
                        },
                      ),
                      ListTile(
                        title: const Text('Satélites'),
                        onTap: () {
                          // Cerrar menú
                          dropdownMenu.toggle(0.0);
                        },
                      ),
                      ListTile(
                        title: const Text('Mapa'),
                        onTap: () {
                          // Cerrar menú
                          dropdownMenu.toggle(0.0);
                        },
                      ),
                      ListTile(
                        title: const Text('Acerca de'),
                        onTap: () {
                          // Cerrar menú
                          dropdownMenu.toggle(0.0);
                        },
                      ),

                      Row(
                        children: [
                          // 2 botones iniciar sesión y registrarse
                          ElevatedButton(
                            onPressed: () {
                              // Cerrar menú
                              dropdownMenu.toggle(0.0);
                            },
                            child: const Text('Iniciar sesión'),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Cerrar menú
                              dropdownMenu.toggle(0.0);
                            },
                            child: const Text('Registrarse'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),

              body,

            ],
          ),
        ),
      )
    );
  }
}

