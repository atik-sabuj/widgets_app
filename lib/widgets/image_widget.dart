import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),

      body: ImageBuilderWidget(
        image: 'https://images.pexels.com/photos/19308248/pexels-photo-19308248/free-photo-of-close-up-of-a-seagull-on-the-seashore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      ),
    );
  }
}


class ImageBuilderWidget extends StatelessWidget {

  final double height, width;
  final String image;

  const ImageBuilderWidget ({Key? key, this.height = 200, this.width = 200, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black
        )
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child : Image(
        height: height,
        width: width,
        fit: BoxFit.fill,
        image: NetworkImage(image),
        errorBuilder: (context, exception, stack){
          return SizedBox(
            height: height,
            width: width,
            child: Icon(Icons.error, color: Colors.red,),
          );
        },
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loading){
          if(loading == null) return child;
          return SizedBox(
            height: height,
            width: width,
            child: Center(child: CircularProgressIndicator(
              value: loading.expectedTotalBytes != null?
              loading.cumulativeBytesLoaded/ loading.expectedTotalBytes! : null,
            )),
          );
        },
      ),
      ),
    );
  }
}
