import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),

      body: ImageBuilderWidget(),
    );
  }
}


class ImageBuilderWidget extends StatelessWidget {

  final double height, width;

  const ImageBuilderWidget ({Key? key, this.height = 200, this.width = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height,
      width: width,
      image: NetworkImage('https://images.pexels.com/photos/18114403/pexels-photo-18114403/free-photo-of-white-egret-standing-in-water.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
    );
  }
}
