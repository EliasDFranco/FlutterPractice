import 'package:flutter/cupertino.dart';

class PrimeraImagen extends StatelessWidget {
  const PrimeraImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Imagen traida desde una URL
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNPkRTBly8dvHECZ465n_pFUEOrMrx0DLhLA&s"),
        
        // Imagen que está en nuestra máquina local
        Image.asset("assets(Images/pajaritodeFlutter.png)", height: 100,)
      ],
    );
  }
}

/*

+-------------------------------------------------+
|              Documentación Image                 |
+-------------------------------------------------+
import 'package:flutter/cupertino.dart';
  Esto importa el paquete de widgets con estilo iOS (Cupertino).
  Aunque no se usen widgets Cupertino directamente, sigue siendo funcional para estructuras comunes como Column e Image.

class PrimeraImagen extends StatelessWidget
  Definís una clase personalizada que extiende de StatelessWidget.
  Esto significa que el widget no guarda estado y no se vuelve a construir por sí mismo.

const PrimeraImagen({super.key});
  Constructor de la clase. Usar `const` ayuda a optimizar el rendimiento indicando que este widget es inmutable.

@override
Widget build(BuildContext context)
  Método obligatorio que construye la interfaz visual del widget.
  Flutter lo llama para renderizar el contenido en pantalla.

return Column(...)
  Utilizás un widget Column para apilar varios widgets hijos de forma vertical (uno debajo del otro).

children: [ ... ]
  Lista de widgets que se colocan dentro de la columna.

Image.network("URL")
  Muestra una imagen descargada desde internet mediante una URL.
  Ideal para mostrar imágenes dinámicas que no están en los archivos locales del proyecto.

Image.asset("assets(Images/pajaritodeFlutter.png)", height: 100)
  Muestra una imagen guardada localmente dentro del proyecto.
  Se especifica la ruta del archivo dentro de la carpeta `assets`.
  El parámetro `height: 100` define una altura fija para la imagen.

  ⚠️ Importante:
  Para que funcione correctamente, la ruta `assets/Images/pajaritodeFlutter.png` debe estar declarada en el archivo `pubspec.yaml`.
*/
