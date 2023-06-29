import 'package:dex_app/controller/card_controller.dart';
import 'package:dex_app/widgets/container_data_pokemon.dart';
import 'package:dex_app/widgets/expanded_text_height.dart';
import 'package:dex_app/widgets/expanded_text_weight.dart';
import 'package:flutter/material.dart';

class ExpandedDataPokemon extends StatelessWidget {
  final CardController cardController;

  const ExpandedDataPokemon({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            cardController.data!.name,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          cardController.data!.types.length == 1
              ? DataPokemon(cardController: cardController, index: 0)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DataPokemon(cardController: cardController, index: 0),
                    DataPokemon(cardController: cardController, index: 1),
                  ],
                ),
          Row(
            children: [
              ExpandedTextWeight(cardController: cardController),
              ExpandedTextHeight(cardController: cardController),
            ],
          ),
        ],
      ),
    );
  }
}
