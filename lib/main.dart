import 'dart:io';

import 'package:astromap/screens/screens.dart';
import 'package:astromap/theme/themes.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().def,
      home: const MenuAstromap(
        body: HomeScreen(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
@override
HttpClient createHttpClient(SecurityContext? context) {
return super.createHttpClient(context)
  ..badCertificateCallback =
      (X509Certificate cert, String host, int port) => true; }}

void main() async {
WidgetsFlutterBinding.ensureInitialized();
HttpOverrides.global = MyHttpOverrides();
runApp(const MyApp());}


