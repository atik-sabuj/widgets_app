import 'package:flutter/material.dart';

class AnimatedListViewBuilderWidget extends StatefulWidget {
  const AnimatedListViewBuilderWidget({super.key});

  @override
  State<AnimatedListViewBuilderWidget> createState() => _AnimatedListViewBuilderWidgetState();
}

class _AnimatedListViewBuilderWidgetState extends State<AnimatedListViewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List View Builder Widget'),
        centerTitle: true,
      ),
      body: Column(),
    );
  }
}
