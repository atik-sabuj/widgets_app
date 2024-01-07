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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://media.geeksforgeeks.org/wp-content/cdn-uploads/logo.png'), //NetworkImage
                ), //DecorationImage
                border: BorderDirectional(
                  start: BorderSide(
                      color: Colors.green,
                      width: 4,
                      style: BorderStyle.solid), //BorderSide
                  end: BorderSide(
                      color: Colors.blue,
                      width: 4,
                      style: BorderStyle.solid), //BorderSide
                ), //Border
              ), //BoxDecoration
            ), //Container
          ), //SizedBox
        ), //Padding
      ), //Center
    ), //Scaffold
    );
  }
