import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {

  bool isExpanded = false ;
  String selectedValue = 'Select option' ;

  //list that will be expanded
  List<String> politicsList = ['Left Wing', 'Liberal', 'Moderate', 'Conservative', 'Libertarian', 'Apolitical'] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down'),
      ),

    );
  }

}
