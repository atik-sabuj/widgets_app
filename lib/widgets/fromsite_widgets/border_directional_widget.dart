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
        title: Text('BorderDirectionalWidget'),
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.comment),
            tooltip: 'Comment',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
      ), //AppBar
