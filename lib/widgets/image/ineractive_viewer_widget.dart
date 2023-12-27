import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Viewer widget'),
      ),
      body: Center(
        child: InteractiveViewer(
          minScale: 1,
          maxScale: 10,
          child: Image.asset(
              'images/aboy.jpeg'
          ),
        ),
      ),
    );
  }
}