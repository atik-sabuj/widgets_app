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
        title: Text('Inkwell Widget'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text(
            'GFG',
            // ignore: deprecated_member_use
            textScaleFactor: 3,
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell='Inkwell Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell='InkWell Long Pressed';
                });
              },
              child: Container(
                  color: Colors.green,
                  width: 120,
                  height: 70,
                  child: Center(
                      child: Text(
                        'Inkwell',
                        // ignore: deprecated_member_use
                        textScaleFactor: 2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: deprecated_member_use
              child: Text(inkwell,textScaleFactor: 2,),
            )
          ],
        ),
      ),
    );
  }
}

