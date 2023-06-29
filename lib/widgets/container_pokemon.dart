import 'package:dex_app/controller/card_controller.dart';
import 'package:dex_app/widgets/pokemon.image.dart';
import 'package:flutter/material.dart';

class ContainerPokemon extends StatelessWidget {
  final CardController cardController;

  const ContainerPokemon({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: cardController.getColor(
          cardController.data!.types[0].type.name,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: SizedBox(
        width: 50,
        child: PokemonImage(id: cardController.data!.id),
      ),
    );
  }
}
