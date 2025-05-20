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
        Text("Apocalypse Now",
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 50,
                color: Colors.blue,
                decorationColor: Colors.blue)),
        Text(
          "Espacioado entre letras",
          style: TextStyle(letterSpacing: 5, fontSize: 30),
        ),
        Text(
          "Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo",
          style: TextStyle(letterSpacing: 30, fontSize: 40),
          maxLines: 2,
        ),
        const Spacer(),
      ],
    );
  }
}

/*
+-------------------------------------------------+
|              Documentación Text                  |
+-------------------------------------------------+

import 'package:flutter/material.dart';
  Esto importa el paquete material.dart, el cual contiene todos los componentes visuales de Material Design como botones, textos, columnas, contenedores, etc.

  Sin esto, no podrías usar ni Text, ni Column, ni StatelessWidget.

class EjemploText extends StatelessWidget
  Estás creando un widget personalizado llamado EjemploText, que extiende de StatelessWidget.
  Esto significa que:

  El widget no guarda estado.

  Solo se construye una vez y no cambia.

🔍 Teoría:
Flutter tiene dos tipos de widgets principales:

Widget	Cambia en el tiempo	Ejemplo
StatelessWidget	❌ No cambia	Un botón sin interacción
StatefulWidget	✅ Cambia	Un contador, un input

const EjemploText({super.key});
  Este es el constructor del widget.
  Se llama automáticamente cuando Flutter crea este widget en la interfaz.
  La palabra const ayuda a optimizar el rendimiento, ya que dice "esto no cambia, así que no lo reconstruyas".

Widget build(BuildContext context)
  Este método construye la UI del widget. Flutter lo llama cada vez que necesita renderizarlo.

return Column(...)
  Aquí estás retornando un widget de tipo Column.

Column:
  Organiza widgets de arriba a abajo.
  Útil para crear listas verticales de elementos.

  Es hijo directo del widget raíz (en este caso sería dentro de algún Scaffold si estuviera en un proyecto real).

children: [ ... ]
  Dentro de Column, los hijos (children) son los widgets que se apilan verticalmente.
  Ahora veamos cada uno de ellos:

const Spacer(),
  El Spacer crea espacio flexible. Aquí, agrega espacio arriba del contenido para que no quede pegado al borde superior.

Teoría rápida:
  Spacer usa un Flex por dentro. Si tienes dos Spacer(), divide el espacio entre ellos.

const Text("Perfil de GitHub")
  Muestra texto plano, sin estilo.

const Text("Configuración", style: TextStyle(fontSize: 24))
  Texto con tamaño de fuente 24.

  TextStyle permite modificar cómo se ve el texto.

const Text("Hola", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
  fontWeight: FontWeight.bold = hace que el texto sea negrita

  fontSize: 30 = tamaño grande

const Text("Que tal", style: TextStyle(fontStyle: FontStyle.italic))
Texto en cursiva (italic).

const Text("Goodfellas", style: ...)
  Estilo combinado:

  color: Colors.orange → color del texto

  fontSize: 30 → tamaño

  backgroundColor: Colors.red → fondo del texto

  Se usa cuando querés destacar un texto, por ejemplo, un título o una alerta.

const Text("Taxi Driver", style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 20))
  Aplica una línea que lo tacha (lineThrough)

  Tamaño de 20

  Ideal para representar texto eliminado o no disponible.

Text("Apocalips Now", style: TextStyle(...))
  Subrayado (decoration: TextDecoration.underline)

  Azul (color: Colors.blue)

  Tamaño gigante (fontSize: 50)

  Color de subrayado también azul (decorationColor: Colors.blue)

Text("Espacioado entre letras", style: TextStyle(letterSpacing: 5, fontSize: 30))
  letterSpacing separa las letras horizontalmente.

  Útil para títulos o textos decorativos.

Text("Texto largo Texto largo...", style: TextStyle(letterSpacing: 30, fontSize: 40), maxLines: 2)
  Espaciado gigante entre letras (30).

  Texto muy grande (fontSize: 40).

  maxLines: 2 = como máximo se muestran 2 líneas. Si hay más, se corta con ....

Esto es clave para evitar que el texto desborde la pantalla.

const Spacer()
  Espacio abajo. Así tu contenido queda centrado verticalmente si está dentro de algo más grande.

*/
