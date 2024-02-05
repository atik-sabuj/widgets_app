import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tooltip Widget'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ) //IconButton
      ), //AppBar
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Tooltip(
                    message: 'Text',
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ), //TextStyle
                    ), //Text
                  ), //Tooltip
                ), //Padding
                color: Colors.green[50],
                width: 300,
                height: 175,
              ), //Container
            ], //<Widget>[]
          ) //Row
      ), //Center
    );

  } //MaterialApp
  }





//new 2
body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Tooltip(
                    message: 'Text',
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ), //TextStyle
                    ), //Text
                  ), //Tooltip
                ), //Padding
                color: Colors.green[50],
                width: 300,
                height: 175,
              ), //Container
            ], //<Widget>[]
          ) //Row
      ), //Center
    );

  } //MaterialApp
  }


body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Tooltip(
                    message: 'Text',
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ), //TextStyle
                    ), //Text
                  ), //Tooltip
                ), //Padding
                color: Colors.green[50],
                width: 300,
                height: 175,
              ), //Container
            ], //<Widget>[]
          ) //Row
      ), //Center
    );

  } //MaterialApp
  }
