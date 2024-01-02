import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({super.key});

  @override
  State<ImageSliderWidget> createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non-Looping Carousel Demo'),
      ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 20),
          child:Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 4.0,
                pageSnapping: true,
                viewportFraction: 1,
                enlargeCenterPage: true,
                reverse: false,
                enableInfiniteScroll: false,
              ),

              items: [

            ],


            ),
          ),
          );
        }
      ),
    );
  }
}
