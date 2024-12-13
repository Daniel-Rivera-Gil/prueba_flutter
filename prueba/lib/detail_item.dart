import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atras'),
      ),

      body: const Center(
        child: Text('Estoy en Detail'),
      ),
    );
  }
}