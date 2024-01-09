import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class OctoImageWidget extends StatelessWidget {
  const OctoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Octo Image Widget'),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: [
          _customImage(),
          SizedBox(height: 16),
          _simpleBlur(),
          SizedBox(height: 16),
          _circleAvatar(),
        ],
      ),
    );
  }

