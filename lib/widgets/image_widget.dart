import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),

      body: Image(
        image: NetworkImage('https://images.pexels.com/photos/18114403/pexels-photo-18114403/free-photo-of-white-egret-standing-in-water.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
      ),
    );
  }
}
