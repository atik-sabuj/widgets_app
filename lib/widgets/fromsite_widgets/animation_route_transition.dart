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
              Navigator.of(context).push(_createRoute());
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


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const AnimatedTransitionPageTwo(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


class AnimatedTransitionPageTwo extends StatelessWidget {
  const AnimatedTransitionPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
