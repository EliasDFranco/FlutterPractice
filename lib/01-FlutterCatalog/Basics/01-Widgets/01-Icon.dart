import 'package:flutter/material.dart';

abstract class IconExample extends StatelessWidget{
  const IconExample ({super.key});


  @override
  Widget Builder(BuildContext context){
    return Column(
      children: [
        Icon(Icons.image,
        size: 78,
        color: Colors.red,)
      ],
    );
  }
}