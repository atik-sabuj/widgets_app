import 'package:flutter/material.dart';

class AlarmClockWidget extends StatefulWidget {
  const AlarmClockWidget({super.key});

  @override
  State<AlarmClockWidget> createState() => _AlarmClockWidgetState();
}

class _AlarmClockWidgetState extends State<AlarmClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Clock Widget'),
        centerTitle: true,
      ),

      body: Center(

      ),
    );
  }
}
