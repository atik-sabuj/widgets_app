import 'package:flutter/material.dart';
import 'widgets/animated_list_view_builder_widget.dart';
import 'widgets/message_grouping_with_time_stamp.dart';
import 'widgets/dates_and_time_widget.dart';
import 'widgets/sizedbox_extension_widget.dart';
import 'widgets/custom_drop_down_widget.dart';
import 'widgets/internet_connectivity_widget.dart';
import 'widgets/shared_preferenace_widget.dart';
import 'widgets/country_code_picker_widget.dart';

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
      //home: const ImageWidget(),
      //home: const SharedPreferenceWidget(),
      //home: const CustomDropDownWidget(),
      //home:  InternetConnectivityScreen(),
      //home:  SizedBoxExtensionWidget(),
      //home: MessageGroupingWithTimeStamp(),
      //home: AnimatedListViewBuilderWidget(),
      home:  DatesAndTimeWidget(),

      //home:  DatesAndTimeWidget(),






    );
  }
}


