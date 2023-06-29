import 'package:dex_app/controller/card_controller.dart';
import 'package:dex_app/widgets/linear.widgets.dart';
import 'package:flutter/material.dart';

class ExpandedList extends StatelessWidget {
  final CardController cardController;

  const ExpandedList({
    super.key,
    required this.cardController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cardController.data!.stats.length,
        itemBuilder: ((context, index) {
          return LinearBar(
            nameStat: cardController.abbreviation(
              cardController.data!.stats[index].stat.name,
            ),
            statValue: cardController.data!.stats[index].baseStat,
            color: cardController.getLiniarBarColor(index),
          );
        }),
      ),
    );
  }
}
