import 'package:flutter/material.dart';
import 'package:flutter_application_1/favorito.dart';
import 'package:flutter_application_1/pessoa.dart';
import 'package:flutter_application_1/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyPrincipal(), ROTA e HOME BRIGAM - Deixar apenas 1
      routes: {
        '/':(context) => MyPrincipal(),
        '/person':(context) => MyPerson(),
        '/favoritos':(context) => MyFavorito(),
      }
    );
  }
}