import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ejemploColumna extends StatelessWidget {
  const ejemploColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Creo un container para agregar aqui la columna - El padre es el Container.
      color: Colors.tealAccent,
      width: double.infinity,

      child: Column(
        // El hijo Column
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hola soy Elias"),
          Text("Soy un estudiante de programación"),
          Text("Tengo 20 años"),
        ],
      ),
    );
  }
}




/*
+-------------------------------------------------+
|              mainAxisAlignment                  |
+-------------------------------------------------+
Uso del mainAxisAlignment que se usan en Flutter con widgets como Row o Column. Todos controlan cómo se alinean los hijos a lo largo del eje principal, que depende del tipo de widget:
*En un Row, el eje principal es horizontal.
*En una Column, el eje principal es vertical.

📌MainAxisAlignment.start
    Alinea todos los hijos al inicio del eje principal.
    Ejemplo: En un Row, los hijos van a la izquierda (en LTR).
    Ideal si querés que todos estén pegados al comienzo del eje.
    Código: mainAxisAlignment: MainAxisAlignment.start

📌 MainAxisAlignment.end
    Alinea todos los hijos al final del eje principal.
    Ejemplo: En un Row, los hijos se alinean a la derecha.
    Útil para alinear botones al final, como en footers.
    Código:mainAxisAlignment: MainAxisAlignment.end

📌 MainAxisAlignment.center
    Centra todos los hijos en el eje principal.
    Espacio igual a ambos lados del grupo completo de hijos.
    Para centrar contenido sin importar su cantidad o tamaño.
  Código:mainAxisAlignment: MainAxisAlignment.center

📌 MainAxisAlignment.spaceBetween
    Deja espacio igual entre los hijos, pero ninguno al inicio ni al final.
    Como una fila justificada en HTML.
    Código: mainAxisAlignment: MainAxisAlignment.spaceBetween

📌 MainAxisAlignment.spaceAround
    Espacio igual alrededor de cada hijo, pero los extremos tienen la mitad del espacio.
    Parece equilibrado, pero con menos espacio en los bordes.
    Código: mainAxisAlignment: MainAxisAlignment.spaceAround

📌 MainAxisAlignment.spaceEvenly
    Todo el espacio se divide equitativamente, incluso el de los bordes.
    Espaciado perfecto y simétrico.
    Código: mainAxisAlignment: MainAxisAlignment.spaceEvenly

*/


/*
+-------------------------------------------------+
|              mainAxisSize                       |
+-------------------------------------------------+
¿Qué es mainAxisSize?
Define cuánto espacio ocupa el widget padre (Row, Column, etc.) en su eje principal:

MainAxisSize.max: ocupa todo el espacio disponible.

MainAxisSize.min: ocupa solo lo necesario para contener a sus hijos.

📌 MainAxisSize.max (valor por defecto)
      mainAxisSize: MainAxisSize.max
      El widget se expande todo lo que puede en su eje principal.
      Por defecto, es como si dijeras "usá todo el espacio que te den".
      Útil cuando querés alinear contenido dentro de una fila o columna que llena su contenedor padre.

📌 MainAxisSize.min
      mainAxisSize: MainAxisSize.min
      El widget solo ocupa el espacio necesario para contener a sus hijos.
      No se estira, solo se ajusta al contenido.
      Ideal cuando querés que el contenido flote o se ajuste a sí mismo sin ocupar espacio innecesario.
*/


/*
+-------------------------------------------------+
|              crossAxisAlignment                 |
+-------------------------------------------------+
¿Qué es crossAxisAlignment?
  crossAxisAlignment define cómo se alinean los hijos a lo largo del eje cruzado:
  En un Row, el eje cruzado es vertical.
  En una Column, el eje cruzado es horizontal.

Valores disponibles en CrossAxisAlignment
📌CrossAxisAlignment.start
    Código: crossAxisAlignment: CrossAxisAlignment.start
    Alinea los hijos al inicio del eje cruzado.

      En un Row: arriba.
      En una Column: a la izquierda.
    Útil para que los widgets se peguen al inicio del eje cruzado.

📌CrossAxisAlignment.end
    crossAxisAlignment: CrossAxisAlignment.end
    Alinea los hijos al final del eje cruzado.

      En un Row: abajo.

      En una Column: a la derecha.
    Ideal si querés alinear botones o textos al borde opuesto.

📌CrossAxisAlignment.center
    crossAxisAlignment: CrossAxisAlignment.center
    Alinea los hijos al centro del eje cruzado.
    Es el valor por defecto en Row y Column.
    Útil cuando querés una alineación equilibrada y ordenada.

📌 CrossAxisAlignment.stretch
    crossAxisAlignment: CrossAxisAlignment.stretch
    Los hijos se estiran para llenar todo el eje cruzado.
    Solo funciona si los hijos pueden estirarse (es decir, no tienen restricciones de tamaño fijo).
    Súper útil para hacer botones o contenedores que llenen todo el ancho/alto.

📌CrossAxisAlignment.baseline

    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic, // ¡Este es obligatorio!
    Alinea los widgets basado en la línea base del texto.

    Solo funciona en Row (no en Column).

    Todos los hijos deben tener texto (o algo con línea base, como Text, RichText).

    Ideal para alinear textos con distintos tamaños de fuente o estilos.

      ⚠️ ¡IMPORTANTE!
          Tenés que agregar textBaseline: TextBaseline.alphabetic, si no Flutter se queja.
*/