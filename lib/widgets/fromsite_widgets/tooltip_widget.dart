import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tooltip Widget'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ) //IconButton
      ), //AppBar
      //Center
    );

  } //MaterialApp
  }
