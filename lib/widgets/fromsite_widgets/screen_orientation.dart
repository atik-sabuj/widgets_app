import 'package:flutter/material.dart';

class ScreenOrientation extends StatelessWidget {
  const ScreenOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Orientation'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(

            //grid with 3 and 4 columns for portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'A $index',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              );
            }),
          );
            // random item generator

        },
      ),
    );
  }
}