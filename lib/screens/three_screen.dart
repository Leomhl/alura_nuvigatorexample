import 'package:alura_nuvigator/navigation/alura_router.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/nuvigator.dart';

class ThreeScreen extends StatelessWidget {

  final String texto;
  ThreeScreen({Key key, @required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final router = NuRouter.of<AluraRouter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira página"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          this.texto.isEmpty ? 'Nada informado!' : this.texto,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}