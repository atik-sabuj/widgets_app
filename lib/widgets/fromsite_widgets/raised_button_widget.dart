import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatefulWidget {
  const RaisedButtonWidget({super.key});

  @override
  State<RaisedButtonWidget> createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {

  String istapped = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button Widget'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        // RaisedButton has been deprecated
        // We can use Elevated button achieve the same results
        RaisedButton(
        //     disabledColor: Colors.red,
        // disabledTextColor: Colors.black,
        padding: const EdgeInsets.all(20),
        textColor: Colors.white,
        color: Colors.green,
        onPressed: () {
          setState(() {
            istapped = 'Button tapped';
          });
        },
        child: const Text('Enabled Button'),
      ),
      const SizedBox(
        height: 20,
      ),
        ),
      ),
    );
  }
}
