import 'package:flutter/material.dart';

class SizedBoxExtensionWidget extends StatelessWidget {
  const SizedBoxExtensionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox Extention Widget'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),

            const SizedBox(height: 50,),

            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),

            const SizedBox(height: 50,),
            const SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
