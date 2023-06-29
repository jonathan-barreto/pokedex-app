import 'package:dex_app/controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardPokedex extends StatefulWidget {
  final String name;

  const CardPokedex({
    super.key,
    required this.name,
  });

  @override
  State<CardPokedex> createState() => _CardPokedexState();
}

class _CardPokedexState extends State<CardPokedex> {
  CardController cardController = CardController();
  @override
  void initState() {
    super.initState();
    cardController.getType(widget.name);
    cardController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return cardController.isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/pokedex',
                arguments: {"model": cardController},
              );
            },
            child: Hero(
              tag: cardController.data!.name,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: cardController.getColor(
                        cardController.data!.types[0].type.name,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 60,
                    width: 200,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/poke.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            cardController.toUpperFirstLetterOfString(
                              cardController.data!.name,
                            ),
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: SvgPicture.network(
                            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${cardController.data!.id}.svg',
                            width: 120,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
