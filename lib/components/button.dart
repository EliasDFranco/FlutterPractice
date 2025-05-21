import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PrimerBoton extends StatelessWidget {
  const PrimerBoton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {},
          child: Text("Presiona esto"),
          onLongPress: () {
            print("Esto ha sido presionado");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange)),
        ),
        Spacer(),
        OutlinedButton(
          onPressed: null,
          child: Text("Outlined"),
          ),
          TextButton(onPressed: null, child: Text("Esto es un text button")),
          FloatingActionButton(onPressed: () {} , child: Icon(Icons.add_a_photo),),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_indoor_outlined))
        
      ],
    );
  }
}
/*
+-------------------------------------------------+
|              Documentación Button               |
+-------------------------------------------------+

import 'package:flutter/material.dart';
  Esto importa el paquete de Material Design, que incluye todos los widgets visuales como botones, íconos, columnas, etc.

class PrimerBoton extends StatelessWidget
  Declarás una clase personalizada que extiende de StatelessWidget.
  Este tipo de widget no guarda estado y no se actualiza dinámicamente.

const PrimerBoton({super.key});
  Constructor de la clase. Se usa `const` para mejorar el rendimiento indicando que este widget no cambia.

@override
Widget build(BuildContext context)
  Método que construye la interfaz del widget.
  Flutter lo ejecuta para mostrar en pantalla los elementos definidos.

return Column(...)
  Usás una columna para apilar widgets verticalmente uno debajo de otro.

children: [ ... ]
  Especificás los widgets que estarán dentro de la columna.

Spacer()
  Agrega espacio flexible antes o después de los elementos.
  Se adapta al espacio disponible para mantener todo bien distribuido.

ElevatedButton(...)
  Botón elevado con sombra. Ideal para destacar acciones principales.

onPressed: () {}
  Función que se ejecuta al presionar el botón.
  Si está en null, el botón aparece deshabilitado.

onLongPress: () { ... }
  Función que se ejecuta al mantener presionado el botón.
  Útil para mostrar opciones secundarias o mensajes.

style: ButtonStyle(...)
  Permite modificar el estilo visual del botón.
  Ejemplos: fondo, forma, borde, etc.

MaterialStatePropertyAll(...)
  Define un estilo constante para todos los estados del botón (normal, presionado, enfocado, etc.).

OutlinedButton(...)
  Botón con borde y sin fondo.
  Se usa para acciones secundarias.

onPressed: null
  Al estar en null, el botón aparece deshabilitado y no se puede presionar.

TextButton(...)
  Botón plano, solo con texto.
  Ideal para acciones menos destacadas o dentro de diálogos.

FloatingActionButton(...)
  Botón circular flotante.
  Muy usado para acciones principales en pantallas como agregar contenido.

child: Icon(...)
  Muestra un ícono dentro del botón.

IconButton(...)
  Botón que solo contiene un ícono.
  Útil para acciones rápidas en barras de herramientas o listas.

icon: Icon(...)
  Define el ícono que se va a mostrar en el botón.

*/