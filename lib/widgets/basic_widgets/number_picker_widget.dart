import 'package:awesome_number_picker/awesome_number_picker.dart';
import 'package:flutter/material.dart';

class NumberPickerWidget extends StatefulWidget {
  const NumberPickerWidget({Key? key}) : super(key: key);

  @override
  State<NumberPickerWidget> createState() => _NumberPickerWidgetState();
}

class _NumberPickerWidgetState extends State<NumberPickerWidget> {

  int integerValue = 0;
  double decimalValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Number Picker Widget'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              _showMyDialog();
            },

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Integer Value"),
                Text(integerValue.toString()),
              ],
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Decimal Value"),
              Text(decimalValue.toStringAsFixed(3)),
            ],
          ),

          SizedBox(
            height: 150,
            child: DecimalNumberPicker(
              initialValue: 25.75,
              minValue: 0,
              maxValue: 100,
              decimalPrecision: 3,
              otherItemsDecoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 20.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),

              pickedItemDecoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(.5),
                    blurRadius: 20.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              onChanged: (i) => setState(() {
                decimalValue = i;
              }),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,   //user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SizedBox(
                  height: 80,
                  child: IntegerNumberPicker(
                    initialValue: integerValue,
                    axis: Axis.vertical,
                    pickedItemDecoration: BoxDecoration(
                      color: Colors.transparent
                  ),
              otherItemsDecoration: BoxDecoration(
                color: Colors.transparent
              ),
              minValue: 0,
              maxValue: 10,
              onChanged: (i) => setState(() {
                integerValue = i;
              }),
                  ),
                ),
              ],
            ),
          ),

        actions: [
          TextButton(
          child: Text('Approve'),
          onPressed: (){
            Navigator.of(context).pop();
        },
        ),
          ],
        );
      }
    );
  }

}


