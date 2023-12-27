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
          child:
          //Image.asset('images/aboy.jpeg'),

          Image.network('https://images.prothomalo.com/prothomalo-english%2Fimport%2Fmedia%2F2019%2F07%2F11%2F74bfcc523b223bd0a7c0710f15c7ce6f-Sundarbans.jpg?rect=0%2C72%2C1024%2C576&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=2.0'),

        ),
      ),
    );
  }
}