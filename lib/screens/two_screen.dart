import 'package:alura_nuvigator/navigation/alura_router.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/nuvigator.dart';

class TwoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final router = NuRouter.of<AluraRouter>(context);
    final TextEditingController textoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda página"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Diga alguma coisa'
              ),
              controller: textoController,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                router.toPageThree(texto: textoController.text);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text('Ir para a página 3 ->'),
            ),
          ],
        ),
      ),
    );
  }
}