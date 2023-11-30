import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {


  List<String> list = [];
  StreamsSocket streamsSocket = StreamsSocket();

  TextEditingController messengerController = TextEditingController();

  Stream<DateTime> generateNumber() async* {
    while(true) {
      await Future.delayed(Duration(seconds: 3));
      yield DateTime.now();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    list.add('Sabuj');
    streamsSocket.addResponse(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: StreamBuilder(
                stream: streamsSocket.getResponse,
                builder: (context, AsyncSnapshot<List<String>> snapshot){
            
                  if(snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());

                  }else if(snapshot.connectionState == ConnectionState.active ||
                      snapshot.connectionState == ConnectionState.done){
            
                    if(snapshot.hasError) {
                      return Text(snapshot.error.toString());
            
                    }else if(snapshot.hasData){

                      return ListView.builder(
                        itemCount: list.length,
                          itemBuilder: (context, index){
                            return Text(snapshot.data![index].toString());
                          }
                      );
            
                    } else {
                      return Text('Something went Wrong');
                    }
            
                  } else {
                    return Text('Something went Wrong');
                  }
            
                }
            ),
          ),

          Row(
            children: [
              TextFormField(
                controller: messengerController,
                decoration: InputDecoration(
                  hintText: 'Enter Message'
                ),
              ),
              IconButton(
                  onPressed: (){
                    list.add(messengerController.text.toString());
                    streamsSocket.addResponse(list);
                    messengerController.clear();

                  },
                  icon: Icon(Icons.send)),
            ],
          ),
        ],
      ),
    );
  }
}

class StreamsSocket {

  final _stream = StreamController<List<String>>.broadcast();

  void Function(List<String>) get addResponse => _stream.sink.add;

  Stream <List<String>> get getResponse => _stream.stream.asBroadcastStream();

}