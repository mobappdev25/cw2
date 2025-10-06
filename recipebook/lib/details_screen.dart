import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display large image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                recipe['image']!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(recipe['ingredients']!, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(recipe['instructions']!, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text(
              'From:',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(recipe['from']!, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}