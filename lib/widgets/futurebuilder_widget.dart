import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {

  Future<int> futureFunction()async{

    await Future.delayed(Duration(seconds: 3));

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),

      body: Column(
        children: [
          FutureBuilder(
              future: futureFunction(),
              builder: (context, snapshot){
                return Text(snapshot.data.toString());
              }
          )
        ],
      ),
    );
  }
}
