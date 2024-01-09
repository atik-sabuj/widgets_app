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

  // circularProgressIndicator
  Widget _customImage() {
    return SizedBox(
      height: 200,
      child: OctoImage(
        image: NetworkImage('https://www.irishtimes.com/polopoly_fs/1.4109315.1575891315!/image/image.jpg_gen/derivatives/box_620_330/image.jpg'),
        progressIndicatorBuilder: (context, progress) {
          double value;
          if (progress != null && progress.expectedTotalBytes != null) {
            value =
                progress.cumulativeBytesLoaded / progress.expectedTotalBytes;
          }
          return CircularProgressIndicator(value: value);
        },
        errorBuilder: (context, error, stacktrace) => Icon(Icons.error),
      ),
    );
  }


