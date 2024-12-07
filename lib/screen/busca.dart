import 'package:flutter/material.dart';

class TelaDeBusca extends StatelessWidget {
  const TelaDeBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: const Text('Buscar no HeavenlyHouse'),
            prefixIcon: const Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)),
            filled: true,
            fillColor: Colors.grey[50],
            contentPadding: const EdgeInsets.all(4),
            
          ),
        )
      ));}}