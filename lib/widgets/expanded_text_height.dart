import 'package:dex_app/controller/card_controller.dart';
import 'package:flutter/material.dart';

class ExpandedTextHeight extends StatelessWidget {
  final CardController cardController;

  const ExpandedTextHeight({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            cardController.addPoint(
              '${cardController.data!.height}',
              'height',
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Height',
            style: TextStyle(
              color: Color(0xff696869),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
