import 'package:dex_app/controller/card_controller.dart';
import 'package:flutter/material.dart';

class ExpandedTextWeight extends StatelessWidget {
  final CardController cardController;
  
  const ExpandedTextWeight({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            '${cardController.addPoint(
              cardController.data!.weight.toString(),
            )} KG',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Weight',
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
