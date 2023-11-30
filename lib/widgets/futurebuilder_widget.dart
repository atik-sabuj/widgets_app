import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {

  //For Integer value show:

  // Future<int> futureFunction()async{
  //
  //   await Future.delayed(Duration(seconds: 3));
  //
  //   return 12;
  // }


  // For DateTime show:

  Future<DateTime> futureFunction()async{

    await Future.delayed(Duration(seconds: 3));

    return DateTime.now();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),

      body: Column(
        children: [
          TextButton(onPressed: () {
            futureFunction();
            setState(() {

            });
          },
          child: Text('Click here')
          ),

          FutureBuilder(
              future: futureFunction(),
              builder: (context, snapshot){

                if(snapshot.connectionState == ConnectionState.waiting){
                  return  CircularProgressIndicator();

                }else if(snapshot.connectionState == ConnectionState.done  ||
                    snapshot.connectionState == ConnectionState.active
                ) {

                  if(snapshot.hasError){
                    return Text(snapshot.error.toString());
                  }else if(snapshot.hasData){
                    return Text(snapshot.data.toString());

                  }else {
                    return Text('Something went Wrong');
                  }

                }else {
                  return Text(snapshot.connectionState.toString());
                }
                return Text(snapshot.data.toString());
              }
          )
        ],
      ),
    );
  }
}
