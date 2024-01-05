import 'package:flutter/material.dart';

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silver AppBar Wiget'),
        centerTitle: true,
      ),

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("$title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ) //TextStyle
                  ), //Text
                  background: Image.network(
                    "https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png",
                    fit: BoxFit.cover,
                  ) //Images.network
              ),


