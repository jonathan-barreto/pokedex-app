import 'package:dex_app/controller/home_controller.dart';
import 'package:dex_app/widgets/card_pokedex.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = HomeController();
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    homeController.urlFetch();
    homeController.addListener(() {
      setState(() {});
    });
    scrollController = ScrollController();
    scrollController.addListener(infiniteScrolling);
  }

  void infiniteScrolling() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      homeController.urlFetch();
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b292c),
      appBar: AppBar(
        title: const Text('Pokédex'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.redAccent,
      ),
      body: homeController.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              controller: scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: homeController.list.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: CardPokedex(
                    name: '${homeController.list[index].name}',
                  ),
                );
              },
            ),
    );
  }
}
