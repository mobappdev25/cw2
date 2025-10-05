import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [

  ]; //recipe data will go here

  @override
  Widget build(BuildContext context){
    return Scaffold{
      appBar: AppBar(title: Text("My Favorite Recipes")),

    }
  }
}