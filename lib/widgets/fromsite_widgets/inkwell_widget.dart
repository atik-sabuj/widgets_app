import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {

  String inkwell='';

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
            // ElevatedButton
            InkWell(
                onPressed: () {
                  setState(() {
                    istapped = 'Button tapped';
                  });
                },
                child: const Text('Enabled Button')),
            const SizedBox(height: 20),
            Text(
              istapped,
              // ignore: deprecated_member_use
              textScaleFactor: 2,
            )
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}

