import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  final Map<String, String> recipe;
  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),

    )
  }
}