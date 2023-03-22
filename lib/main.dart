import 'package:flutter/material.dart';
import 'package:prueba_app/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AMB APP",
      initialRoute: "Login",
      routes: routes,
    );
  }
}
