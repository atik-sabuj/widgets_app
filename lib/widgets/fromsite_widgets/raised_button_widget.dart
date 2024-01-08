import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatefulWidget {
  const RaisedButtonWidget({super.key});

  @override
  State<RaisedButtonWidget> createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button Widget'),
        centerTitle: true,
      ),

      body: Center(

      ),
    );
  }
}
