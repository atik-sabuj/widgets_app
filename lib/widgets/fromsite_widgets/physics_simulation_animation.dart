import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsSimulationAnimationDemo extends StatelessWidget {
  const PhysicsSimulationAnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physics Simulation'),
        backgroundColor: Colors.green,
      ),
      body: DraggableCard(
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.green
            ),
          )
      ),
    );
  }
}

class DraggableCard extends StatefulWidget {
  final Widget child;
  DraggableCard({this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;


  Alignment _dragAlignment = Alignment.center;

  Animation<Alignment> _animation;

  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );