import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Oval Widget'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: ClipOval(
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
              fit: BoxFit.fill),
          clipper: MyClip(),
        ),

        //2nd 
        ClipOval(
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
              fit: BoxFit.fill),
          clipper: MyClip(),
        ),

        ClipOval(
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
              fit: BoxFit.fill),
          clipper: MyClip(),
        ),

        ClipOval(
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
              fit: BoxFit.fill),
          clipper: MyClip(),
        ),
        ClipOval(
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU',
              fit: BoxFit.fill),
          clipper: MyClip(),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
