import 'package:dex_app/screen/home/home_screen.dart';
import 'package:dex_app/screen/pokedex/pokedex_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/pokedex': (context) => const MyPokedex(),
      },
    );
  }
}
