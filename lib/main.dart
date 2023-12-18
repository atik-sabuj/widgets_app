import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/country_code_picker_widget.dart';

import 'widgets/animated_container_widget.dart';
import 'widgets/futurebuilder_widget.dart';
import 'widgets/image_widget.dart';
import 'widgets/reorderablelistview_widget.dart';
import 'widgets/streambuilder_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      //home: const ReorderableWidget(),
      //home: const FutureBuilderWidget(),
      //home: const StreamsBuilderWidget(),
      //home: const CountryCodePickerWidget(),
      //home: const AnimatedContainerWidget(),
      home: const ImageWidget(),

      //home: const ImageWidget(),



    );
  }
}


