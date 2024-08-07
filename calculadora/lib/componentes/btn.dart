import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String tecla;
  final double pad;

  const Btn({super.key, required this.tecla, this.pad = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 82, 80, 80), // Defina a cor de fundo desejada aqui
          shape: BoxShape.circle),
      padding: EdgeInsets.all(pad),
      child: Text(
        tecla,
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
    );
  }
}
