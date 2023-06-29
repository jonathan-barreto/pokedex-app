import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokemonImage extends StatelessWidget {
  final int id;

  const PokemonImage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg',
    );
  }
}
