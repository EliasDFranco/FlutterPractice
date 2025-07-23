import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
    

class ImageExample extends StatelessWidget{
  const ImageExample ({super.key});

  @override
  Widget build(BuildContext context){
    var kTrasparentImage;
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        const ListTile(
          title: Text("Este es una imagen insertada localmente"), 
        ),
        Card(
          child: Image.asset('assets/Images/pajaritoFlutter.png'),
        ),
        const Divider(),
        const ListTile(
          title: Text("Imagen por una URL"),
          
        ),
        Card(
          child: FadeInImage.memoryNetwork(placeholder: kTrasparentImage, image: 'https://talently.tech/blog/que-es-una-prueba-tecnica/'),
        ),
        const Divider(),
        const ListTile(
          title: Text("Cached network image",),
        ),
        CachedNetworkImage(
          imageUrl: 'https://picsum.photos/id/7/250/250',
          placeholder: (context, url) => 
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const Divider(),
        const ListTile(title: Text("GIF from asset:")),
        Image.asset(
          'res/images/animated_flutter_lgtm.gif',
          scale: 1.0,
          height: 300,
        ),
        const Divider(),
        const ListTile(title: Text('WEP from package in asssets:')),
        Image.asset('animated_images/animated_flutter_stickers.webp',
        package: 'flutter_gallery_assets',
        ),
        const ListTile(
          title: Text("ExtendedImage: "),
          subtitle: Text("provides more functionalities like  image  caching and shape and borderRadius",),
        ),
        ExtendedImage.network(
          'https://images.unplash.com/photo-1515488764276-beab7607c1e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWiOjEyMDd9&auto=format&fit=crop&w=1895&q=80',
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
      ],
    );
  }
}