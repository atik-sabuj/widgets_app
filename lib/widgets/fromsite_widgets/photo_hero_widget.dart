import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class PhotoHeroWidget extends StatelessWidget {
  const PhotoHeroWidget(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}



class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        backgroundColor: Colors.green,
      ),

    );
  }
}

void main() {
  runApp(const MaterialApp(home: HeroAnimation()));
}