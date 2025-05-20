import 'package:flutter/material.dart';

class EjemploText extends StatelessWidget {
  const EjemploText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text("Perfil de GitHub"),
        const Text(
          "Configuración",
          style: TextStyle(fontSize: 24),
        ),
        const Text(
          "Hola",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const Text(
          "Que tal",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        const Text("Goodfellas",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                backgroundColor: Colors.red)),
        const Text(
          "Taxi Driver",
          style:
              TextStyle(decoration: TextDecoration.lineThrough, fontSize: 20),
        ),
        Text("Apocalips Now",
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 50)),
        const Spacer(),
      ],
    );
  }
}
