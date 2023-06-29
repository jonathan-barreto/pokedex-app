import 'dart:convert';


import 'package:dex_app/model/color_model.dart';
import 'package:dex_app/model/name.model.dart';
import 'package:dex_app/screen/pokedex/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardController extends ChangeNotifier {
  bool isLoading = true;
  PokemonModel? data;
  Color? color;

  Future<void> getType(String name) async {
    isLoading = true;

    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/$name/');
    var response = await http.get(url);

    data = PokemonModel.fromJson(jsonDecode(response.body));

    isLoading = false;

    notifyListeners();
  }

  Color getColor(String type) {
    if (type == 'bug') return const Color(0xFF99AA38);
    if (type == 'dark') return const Color(0xFF1D1E18);
    if (type == 'dragon') return const Color(0xFF5263d7);
    if (type == 'electric') return const Color(0xFFFABC3C);
    if (type == 'fairy') return const Color(0xFFfbaffc);
    if (type == 'fighting') return const Color(0xFFfea204);
    if (type == 'fire') return Colors.deepOrange;
    if (type == 'flying') return const Color(0xFF96cafd);
    if (type == 'ghost') return const Color(0xFF6622CC);
    if (type == 'grass') return const Color(0xFF3DDC97);
    if (type == 'ground') return const Color(0xFFa8793e);
    if (type == 'ice') return const Color(0xFFBFDBF7);
    if (type == 'poison') return const Color(0xFFA997DF);
    if (type == 'psychic') return const Color(0xFFF0386B);
    if (type == 'rock') return const Color(0xFF95A3B3);
    if (type == 'steel') return const Color(0xFF6bb0d4);
    if (type == 'water') return const Color(0xFF83BCFF);
    return Colors.grey;
  }

  String returnId(int id) {
    String stringId = id.toString();
    if (stringId.length == 1) return '#00$stringId';
    if (stringId.length == 2) return '#0$stringId';
    return '#$stringId';
  }

  String addPoint(String text, [stat]) {
    int value = int.parse(text);
    if (text.length == 1 && stat == 'height') return '${value * 10} CM';
    if (text.length == 2 && stat == 'height') {
      return '${text.substring(0, text.length - 1)}.${text[text.length - 1]} M';
    }
    return '${text.substring(0, text.length - 1)}.${text[text.length - 1]}';
  }

  String abbreviation(String textComplete) {
    NameModel text = NameModel.returnAbbreviation();
    return text.map![textComplete];
  }

  Color getLiniarBarColor(int index) {
    ColorModel listColor = ColorModel.returnColors();
    return listColor.list![index];
  }

  String toUpperFirstLetterOfString(String? string) {
    String toUpperCaseLetter = string![0].toUpperCase();
    String result = toUpperCaseLetter + string.substring(1);
    return result;
  }
}
