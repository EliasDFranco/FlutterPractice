import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "HI MORDECAI",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
