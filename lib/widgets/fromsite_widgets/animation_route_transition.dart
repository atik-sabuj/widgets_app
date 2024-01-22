import 'package:flutter/material.dart';

class AnimatedTransitionPageOne extends StatelessWidget {
  const AnimatedTransitionPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedRouteTransitionPageOne'),
        backgroundColor: Colors.green,
      ),

      body: Center(
          child: ElevatedButton(
            onPressed: () {
             // Navigator.of(context).push(_createRoute());
            },
            child: const Text('Go to Page 2'),
          )

        // RaisedButton is deprecated
        // We should use ElevatedButton instead

        // child: RaisedButton(
        // child: const Text('Go to Page 2'),
        // onPressed: () {
        //     Navigator.of(context).push(_createRoute());
        // },
        // ),

      ),
    );
  }
}
