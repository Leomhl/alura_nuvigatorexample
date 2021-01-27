import 'package:alura_nuvigator/navigation/alura_router.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/nuvigator.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final router = NuRouter.of<AluraRouter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira página"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()  {
            final router = NuRouter.of<AluraRouter>(context);
            router.toPageTwo();
          },
          child: Text('Ir para a página 2 ->'),
        ),
      ),
    );
  }
}