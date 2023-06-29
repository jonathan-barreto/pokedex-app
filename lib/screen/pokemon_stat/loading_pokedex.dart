import 'package:flutter/material.dart';

class LoadingPokemonStat extends StatelessWidget {
  const LoadingPokemonStat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2b292c),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
