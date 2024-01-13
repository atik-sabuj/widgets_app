import 'package:flutter/material.dart';

class PhotoHeroWidget extends StatelessWidget {
  const PhotoHeroWidget(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhotoHero Widget'),
        centerTitle: true,
      ),

      body: Center(),
    );
  }
}
