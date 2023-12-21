import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectivityScreen extends StatelessWidget {
  const InternetConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Connectivity connectivity = Connectivity();

    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connectivity Screen'),
        centerTitle: true,
      ),

      body: StreamBuilder<ConnectivityResult>(
        stream: connectivity.onConnectivityChanged,
        builder: (_, snapshot){
          return InternetConnectionWidget(snapshot: snapshot, widget: Text('Connected'),);
        },
      ),
    );
  }
}

class InternetConnectionWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;

  const InternetConnectionWidget({Key? key,
    required this.widget,
    required this.snapshot
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data!;
        switch(state){
          case ConnectivityResult.none:
            return Center(child: Text('Not Connected'),);
          default:
            return widget;
        }
      default:
        return Text('');
    }
  }
}