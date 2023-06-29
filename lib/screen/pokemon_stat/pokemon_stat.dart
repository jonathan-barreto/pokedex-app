import 'package:dex_app/controller/card_controller.dart';
import 'package:dex_app/screen/pokemon_stat/app_bar.dart';
import 'package:dex_app/widgets/container_pokemon.dart';
import 'package:dex_app/widgets/expanded.data.dart';
import 'package:dex_app/widgets/expanded.list.dart';
import 'package:flutter/material.dart';

class PokemonStat extends StatelessWidget {
  final CardController cardController;

  const PokemonStat({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cardController.data!.name,
      child: Scaffold(
        backgroundColor: const Color(0xff2b292c),
        appBar: AppBarPokedex(cardController: cardController),
        body: Column(
          children: [
            Expanded(
              child: ContainerPokemon(cardController: cardController),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ExpandedDataPokemon(cardController: cardController),
                  const Text(
                    'Base Stats',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ExpandedList(cardController: cardController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
