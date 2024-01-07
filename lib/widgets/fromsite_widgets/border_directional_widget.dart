import 'package:flutter/material.dart';

class BorderDirectionalWidget extends StatefulWidget {
  const BorderDirectionalWidget({super.key});

  @override
  State<BorderDirectionalWidget> createState() => _BorderDirectionalWidgetState();
}

class _BorderDirectionalWidgetState extends State<BorderDirectionalWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Border Directional Widget'),
      ),

      body: Center(

      ),
    );
  }
}
