import 'package:flutter/material.dart';

class PhoneNumberValidation extends StatefulWidget {
  const PhoneNumberValidation({super.key});

  @override
  State<PhoneNumberValidation> createState() => _PhoneNumberValidationState();
}

class _PhoneNumberValidationState extends State<PhoneNumberValidation> {
  bool outlineBorder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Phone Form Field'),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SwitchListTile(
                        value: outlineBorder,
                        onChanged: (v) => setState(() => outlineBorder = v ),
                      title: Text('Outlined border'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
