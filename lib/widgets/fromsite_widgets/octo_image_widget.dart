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
                progress.cumulativeBytesLoaded / progress.cumulativeBytesLoaded;
          }
          return CircularProgressIndicator();
        },
        errorBuilder: (context, error, stacktrace) => Icon(Icons.error),
      ),
    );
  }

  //blusrHash
  Widget _simpleBlur() {
    return AspectRatio(
      aspectRatio: 269 / 173,
      child: OctoImage(
        image: NetworkImage(
            'https://english.cdn.zeenews.com/sites/default/files/2019/12/10/834702-gal-gadot-news.jpg'),
        // placeholderBuilder: OctoPlaceholder.null(
        //   'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        // ),
        errorBuilder: OctoError.icon(color: Colors.red),
        fit: BoxFit.cover,
      ),
    );
  }


  //circleAvatar
  Widget _circleAvatar() {
    return SizedBox(
      height: 200,
      child: OctoImage.fromSet(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://i.pinimg.com/564x/f6/1a/5f/f61a5f7e90f0ba4f3eda751f6ebc6f46.jpg',
        ),
        octoSet: OctoSet.circleAvatar(
          backgroundColor: Colors.red,
          text: Text("Gal"),
        ),
      ),
    );
  }
}