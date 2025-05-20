import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EjemploRow extends StatelessWidget {
  const EjemploRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 80, left: 100, right: 100, bottom: 100),
      child: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Esto es una row fila 1"),
            Text("Esto es una row fila 2"),
            Text("Esto es una row fila 3"),
            Text("Esto es una row fila 4"),
            Text("Esto es una row fila 5"),
            Expanded(child: Text("Esto es una row fila 6")),
          ],
        ),
      ),
    );
  }
}

// AQUI EMPIEZA LA DOCUMENTACIÓN DEL ARCHIVO

/*
+-------------------------------------------------+
|                  REFACTOR                       |
+-------------------------------------------------+
¿Qué significa "refactor" en general?
  Refactorizar en programación es mejorar el código internamente sin cambiar su funcionalidad externa. Es como ordenar tu cuarto: no compras muebles nuevos, pero dejas todo más organizado.


¿Qué es refactorizar un Column o Row?
  Cuando refactorizas un Column o Row, puedes estar haciendo varias cosas:

1)Extraer widgets en métodos o clases nuevas:
  Para evitar que tu build() esté lleno de widgets anidados.
Ejemplo:
Column(
  children: [
    buildUserAvatar(),
    buildUserName(),
    buildActionButtons(),
  ],
);


2)Dividir una fila/columna muy larga:
  Si un Row tiene muchos elementos, puedes dividirlos en subcomponentes.
Ejemplo N° 2:
Row(
  children: [
    buildLeftIcons(),
    Spacer(),
    buildRightIcons(),
  ],
);

3)Usar un ListView si hay overflow:
Cambiar un Column por un ListView si el contenido puede salirse de la pantalla.
Ejemplo N° 3:
// Antes:
Column(
  children: [...],
);

// Después:
ListView(
  children: [...],
);


4)Usar Expanded o Flexible en Row/Column para mejorar el layout:
  Refactorizar para controlar cómo se distribuyen los espacios.

Ejemplo N° 4.
Row(
  children: [
    Expanded(child: Text("Izquierda")),
    Expanded(child: Text("Derecha")),
  ],
);
✅ 

¿Para qué sirve refactorizar un Column o Row?
  *Mejora la legibilidad del código.

  *Hace que sea más fácil mantener y escalar.

  *Evita errores como overflows o widgets que se salen de la pantalla.

  *Permite reutilizar partes del UI.

  *Facilita los tests y el trabajo en equipo.

*/

/*

+-------------------------------------------------+
|                  ¿QUÉ ES OVERFLOW               |
+-------------------------------------------------+

¿Qué es Overflow en Flutter?
  En Flutter, overflow significa que un widget está intentando ocupar más espacio del que tiene disponible en la pantalla. Cuando esto pasa, Flutter no puede renderizar bien el contenido y te lanza un error visual (una raya amarilla y negra muy fea).

*/

/*

+-------------------------------------------------+
|                  SIZEDBOX                       |
+-------------------------------------------------+

¿Qué es SizedBox en Flutter?
  SizedBox es un widget ligero que se utiliza principalmente para:
  Dar espacio vacío (padding o separación) entre widgets.
  Dar un tamaño fijo a un widget hijo.
  Su propósito es puro y directo: tamaño fijo o espacio. Nada más. No tiene decoración, color, borde, etc


| Característica         | `SizedBox`                        | `Container`                         |
| ---------------------- | --------------------------------- | ----------------------------------- |
| Propósito              | Dar tamaño o espacio              | Widget genérico multiuso            |
| Peso en rendimiento    | Más liviano                       | Un poco más pesado                  |
| Personalización visual |❌No tiene color, bordes, padding | ✅ Tiene color, borde, padding, etc. |
| Ideal para...          | Espaciado o limitar tamaño        | Estilizar un widget (fondo, borde)  |

*/

/*
+-------------------------------------------------+
|                  Spacer()                       |
+-------------------------------------------------+

En Flutter, un Spacer es un widget utilizado para ocupar espacio flexible dentro de un Row, Column o Flex,
empujando otros widgets hacia los extremos o creando separación entre ellos.

¿Cómo funciona Spacer?
  Spacer utiliza un Flexible por dentro para ocupar el espacio disponible según un factor (flex).
  Es útil cuando querés distribuir widgets de manera proporcional.

*/

/*
+-------------------------------------------------+
|                 EXPANDED                        |
+-------------------------------------------------+

¿Qué hace Expanded?
  Expanded expande un widget hijo para que ocupe el espacio disponible dentro de un layout flexible (como Row o Column).
  También se puede controlar con el parámetro flex.
*/

