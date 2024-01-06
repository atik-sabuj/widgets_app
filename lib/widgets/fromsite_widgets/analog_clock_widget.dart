import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class AnalogClockWidget extends StatefulWidget {
  const AnalogClockWidget({super.key});

  @override
  State<AnalogClockWidget> createState() => _AnalogClockWidgetState();
}

class _AnalogClockWidgetState extends State<AnalogClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text('Analog Clock Widget'),
      ), // app bar
      backgroundColor: Colors.green,
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black),
              color: Colors.black,
              shape: BoxShape.circle),
          // decoration
          width: 200.0,
          isLive: true,
          hourHandColor: Colors.white,
          minuteHandColor: Colors.white,
          showSecondHand: true,
          numberColor: Colors.white,
          showNumbers: true,
          textScaleFactor: 1.5,
          showTicks: true,
          showDigitalClock: true,
          digitalClockColor: Colors.white,
          datetime: DateTime(2020, 8, 4, 9, 11, 0),
        ), // analog clock
      ), // center
    );
  }
}