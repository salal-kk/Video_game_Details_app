import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videogame_api/service/providers.dart';
import 'package:videogame_api/view/screens/TabView.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: providers,
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  ));
}
