import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MiprimerIcono extends StatelessWidget {
  const MiprimerIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
      Icons.add_alarm,
      size: 60,
      color: Theme.of(context).primaryColorDark,
    ));
  }
}
