import 'package:flutter/material.dart';
import 'package:widgets_app/widgets/normal/custom_slider.dart';
import 'widgets/animation/animated_list_view_builder_widget.dart';
import 'widgets/normal/custom_height_picker_widget.dart';
import 'widgets/image_related//image_compressor_widget.dart';
import 'widgets/date_time/message_grouping_with_time_stamp.dart';
import 'widgets/date_time/dates_and_time_widget.dart';
import 'widgets/image_related/ineractive_viewer_widget.dart';
import 'widgets/advanced_widgets/sizedbox_extension_widget.dart';
import 'widgets/advanced_widgets/custom_drop_down_widget.dart';
import 'widgets/advanced_widgets/internet_connectivity_widget.dart';
import 'widgets/advanced_widgets/shared_preferenace_widget.dart';
import 'widgets/advanced_widgets/country_code_picker_widget.dart';
import 'widgets/animation/animated_container_widget.dart';
import 'widgets/advanced_widgets/futurebuilder_widget.dart';
import 'widgets/image_related/image_widget.dart';
import 'widgets/advanced_widgets/reorderablelistview_widget.dart';
import 'widgets/advanced_widgets/streambuilder_widget.dart';

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
      //home:  DatesAndTimeWidget(),
      //home:  ImageCompressorWidget(),
      //home:  InteractiveViewerWidget(),
      //home: CustomHeightPicker(),
      home: NewSlide(),






    );
  }
}


