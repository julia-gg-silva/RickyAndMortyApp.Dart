import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;

  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Character",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Text(character.name,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23)),
          const SizedBox(height: 25),
          Image.network(
            character.image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
           const SizedBox(height: 10),
          Text('Status: ${character.status}'),
           const SizedBox(height: 8),
          Text('Specie: ${character.species}'),
           const SizedBox(height: 8),
          Text('Gerder: ${character.gender}'),
           const SizedBox(height: 8),
          Text('Origin: ${character.originName}'),
           const SizedBox(height: 8),
          Text('Location: ${character.locationName}'),
        ],
      )),
    );
  }
}
