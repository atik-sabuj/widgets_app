import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {

  bool isOpen = false;
  String selectOptions = 'Select Options';
  List<String> politicsList = ['Left Wing', 'Liberal', 'Moderate', 'Conservative', 'Liberation', 'Apolitical'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  isOpen = !isOpen;
                  setState(() {

                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300
                  ),
                  child : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectOptions),
                      Icon(isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down)
                    ],
                  ),
                  ),
                ),
              ),

              ListView(
                primary: true,
                shrinkWrap: true,
                children : politicsList.map((e) => Container(
                  decoration: BoxDecoration(
                      color: selectOptions == e ? Colors.red : Colors.grey.shade300
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: (){
                          selectOptions = e;
                          isOpen = false;
                          setState(() {

                          });
                        },
                        child: Text(e)),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
