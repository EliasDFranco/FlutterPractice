import 'package:flutter/material.dart';

class TextFieldEjemplo extends StatelessWidget {
  const TextFieldEjemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "  Introduce tu nombre",
              prefixIcon: Icon(Icons.move_to_inbox_outlined),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "  Introduce tu número de cédula (C.I)",
              prefixIcon: Icon(Icons.computer),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "  Introduce tu edad",
              prefixIcon: Icon(Icons.agriculture),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "  Introduce tu correo electrónico",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "  Introduce tu contraseña",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 5, 
            maxLength: 100,
            decoration: InputDecoration(
              hintText: "  Introduce un comentario.....",
              prefixIcon: Icon(Icons.comment),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}




/*

+-------------------------------------------------+
|              Documentación TextField            |
+-------------------------------------------------+

| Widget / Propiedad         | Explicación                                                                 |
|----------------------------|-----------------------------------------------------------------------------|

| import                     | Permite acceder a los widgets y herramientas del paquete Material de Flutter. |

| StatelessWidget            | Tipo de widget que no cambia durante la ejecución. Ideal para interfaces estáticas. |

| const                      | Define objetos constantes en tiempo de compilación, mejora el rendimiento. |

| build                      | Método que construye y devuelve la interfaz del widget. |

| BuildContext               | Proporciona información del árbol de widgets, se usa para acceder a temas, navegación, etc. |

| ListView                   | Widget que muestra una lista desplazable de elementos (scroll vertical). |

| children                   | Lista de widgets que serán renderizados dentro del contenedor (por ejemplo, ListView). |

| SizedBox                   | Widget invisible que agrega espacio en pantalla (alto o ancho). |

| Padding                    | Agrega espacio interno alrededor de un widget hijo. |

| EdgeInsets.all(x)          | Crea un padding uniforme de x píxeles en todos los lados. |

| TextField                  | Campo de entrada de texto para que el usuario escriba. |

| decoration                 | Permite personalizar el estilo del TextField (bordes, íconos, hint, etc). |

| InputDecoration            | Objeto que contiene las propiedades de estilo visual para el TextField. |

| hintText                   | Texto guía que aparece dentro del campo cuando está vacío. |

| prefixIcon                 | Ícono que aparece antes del texto ingresado. |

| Icon                       | Widget que representa un ícono gráfico dentro de la app. |

| OutlineInputBorder         | Tipo de borde rectangular con esquinas redondeadas por defecto. |

| obscureText: true          | Oculta los caracteres ingresados (ideal para contraseñas). |

| maxLines                   | Permite que el TextField tenga varias líneas de texto (por defecto 1). |

| maxLength                  | Límite máximo de caracteres que se pueden escribir en el campo. |

*/