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

      body: Center(

      ),
    );
  }
}
