import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {


  Stream<int> generateNumber() async* {
    yield 12;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),
      ),

      body: Column(
        children: [
          StreamBuilder(
              stream: generateNumber(),
              builder: (context, snapshot){
                return Text(snapshot.data.toString());
              }
          )
        ],
      ),
    );
  }
}
