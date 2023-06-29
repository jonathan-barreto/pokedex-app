import 'package:dex_app/controller/card_controller.dart';
import 'package:dex_app/screen/pokemon_stat/pokemon_stat.dart';
import 'package:flutter/material.dart';

class MyPokedex extends StatefulWidget {
  const MyPokedex({super.key});

  @override
  State<MyPokedex> createState() => _MyPokedexState();
}

class _MyPokedexState extends State<MyPokedex> {
  CardController? cardController;

  @override
  void didChangeDependencies() {
    Map map = ModalRoute.of(context)!.settings.arguments as Map;
    cardController = map['model'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return PokemonStat(cardController: cardController!);
  }
}
