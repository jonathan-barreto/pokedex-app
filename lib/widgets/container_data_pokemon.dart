import 'package:dex_app/controller/card_controller.dart';
import 'package:flutter/material.dart';

class DataPokemon extends StatelessWidget {
  final CardController cardController;
  final int index;

  const DataPokemon({
    super.key,
    required this.cardController,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 30,
      decoration: BoxDecoration(
        color: cardController.getColor(cardController.data!.types[index].type.name),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          cardController.data!.types[index].type.name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
