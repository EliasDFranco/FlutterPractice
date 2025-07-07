
import 'package:flutter/material.dart';

class TipographyExample extends StatelessWidget {
  const TipographyExample ({super.key});

  @override
  Widget build(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    final _styles = <String, TextStyle>{
      'Los Sopranos' : textTheme.displayLarge!,
      'Breaking Bad': textTheme.bodyMedium!,
      'Game of Thrones': textTheme.displaySmall!,
    };
    return ListView(
      children: [
        for (final x in _styles.entries)
          ListTile(title: Text(x.key, style: x.value)),
      ],
    );
  }
}