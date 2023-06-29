import 'package:dex_app/model/home_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeController extends ChangeNotifier {
  bool isLoading = true;
  List<HomeModel> list = [];
  Color? cor;
  String url = 'https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20';

  Future<void> urlFetch() async {
    isLoading = true;
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body)['results'] as List;
    list.addAll(json.map((e) => HomeModel.fromJson(e)).toList());
    url = jsonDecode(response.body)['next'];
    isLoading = false;
    notifyListeners();
  }
}
