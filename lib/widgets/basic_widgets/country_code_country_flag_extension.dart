import 'package:flutter/material.dart';

class CountryCodeToFlagExtension extends StatelessWidget {
  const CountryCodeToFlagExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Code Flag Extension'),
      ),
      body: Center(
        child: Text("BD".toString(),
        style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
