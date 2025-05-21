import 'package:flutter/material.dart';

class Tipografias extends StatelessWidget {
  const Tipografias({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final _styles = <String, TextStyle>{
      // Display LARGE - MEDIUM - SMALL
      'Títullo 1': textTheme.displayLarge!,
      'Titulo 2': textTheme.displayMedium!,
      'Titulo 3': textTheme.displaySmall!,

      // HEADLINE 1 a 6
      'Titulo 4': textTheme.headline1!,
      'Titulo 5': textTheme.headline2!,
      'Titulo 6': textTheme.headline3!,
      'Titulo 7': textTheme.headline4!,
      'Titulo 8': textTheme.headline5!,
      'Titulo ': textTheme.headline6!,

      // HEADLINE LARGE - MEDIUM - SMALL
      'Titulo Headline Large': textTheme.headlineLarge!,
      'Titulo headline Medium': textTheme.headlineMedium!,
      'Titulo Headoline Small': textTheme.headlineSmall!,

      // TITLE LARGE - MEDIUM - SMALL
      "Titulo Large": textTheme.titleLarge!,
      'Titulo Medium': textTheme.titleMedium!,
      'Titulo Small': textTheme.titleSmall!,

      // BODY LARGE - MEDIUM
      'Cuerpo Large': textTheme.bodyLarge!,
      'Cuerpo Medium': textTheme.bodyMedium!,
      'Cuerpo Small': textTheme.bodySmall!,

      // BUTON
      'Button': textTheme.labelLarge!,
      'Hello': textTheme.labelMedium!,
      'Overline': textTheme.labelSmall!,

      // BODY 
      'Caption': textTheme.bodyLarge!,

    };
    return ListView(
      children: [
        for(final x in _styles.entries)
          ListTile(title: Text(x.key, style: x.value,),)
      ],
    );
  }
}

/*

+-------------------------------------------------+
|              Documentación Typography            |
+-------------------------------------------------+

import 'package:flutter/material.dart';
  Importa el paquete principal de Flutter que proporciona los widgets con diseño Material Design,
  incluyendo Text, ListTile, Theme, etc.

class Tipografias extends StatelessWidget {
  Definís una clase personalizada que extiende StatelessWidget, lo cual significa que este widget
  no guarda estado y no se reconstruye por sí mismo.

const Tipografias({super.key});
  Constructor constante del widget. Usar `const` mejora el rendimiento, ya que indica
  que esta clase es inmutable y puede ser reutilizada sin reconstrucción.

@override
Widget build(BuildContext context)
  Método esencial que construye y devuelve la interfaz gráfica del widget.
  Flutter lo llama cada vez que necesita renderizar este componente en pantalla.

final textTheme = Theme.of(context).textTheme;
  Se accede al tema de texto actual desde el contexto, que contiene todos los estilos de texto
  predeterminados definidos en el tema (ThemeData) de la app.

final _styles = <String, TextStyle>{ ... };
  Se crea un mapa donde la clave es un String descriptivo (por ejemplo, "Título 1")
  y el valor es el estilo correspondiente (por ejemplo, `textTheme.displayLarge`).
  Esto permite visualizar de forma ordenada los distintos estilos de tipografía que Flutter ofrece.
  
  ✅ Incluye estilos como:
    - displayLarge, displayMedium, displaySmall: usados para títulos grandes.
    - headline1 a headline6 y sus variantes modernas como headlineLarge, etc.
    - titleLarge, titleMedium, titleSmall: para títulos secundarios.
    - bodyLarge, bodyMedium, bodySmall: para el cuerpo del texto.
    - labelLarge, labelMedium, labelSmall: para botones o etiquetas.
    - caption, overline: para textos menores o decorativos.

return ListView(
  children: [
    for (final x in _styles.entries)
      ListTile(
        title: Text(x.key, style: x.value),
      ),
  ],
);
  Se devuelve un ListView con un ListTile por cada entrada del mapa `_styles`.
  Cada tile muestra el nombre del estilo (clave) con su propio estilo aplicado (valor).
  Esto sirve como una **vista previa visual** de cada tipo de texto dentro del tema de la app.

  🧠 Ideal para desarrolladores que quieran ver rápidamente cómo se visualiza cada estilo
  de texto según el tema actual de la aplicación.

*/
