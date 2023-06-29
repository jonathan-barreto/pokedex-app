import 'package:dex_app/controller/card_controller.dart';
import 'package:flutter/material.dart';

class AppBarPokedex extends StatelessWidget implements PreferredSizeWidget {
  final CardController cardController;

  const AppBarPokedex({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Pokédex'),
          Text(
            cardController.returnId(cardController.data!.id),
          ),
        ],
      ),
      elevation: 0,
      backgroundColor: cardController.getColor(
        cardController.data!.types[0].type.name,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
