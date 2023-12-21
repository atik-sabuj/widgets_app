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
          return InternetConnectionWidget();
        },
      ),
    );
  }
}

class InternetConnectionWidget extends StatelessWidget {
  const InternetConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}