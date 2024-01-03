import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNumberValidation extends StatefulWidget {
  const PhoneNumberValidation({super.key});

  @override
  State<PhoneNumberValidation> createState() => _PhoneNumberValidationState();
}

class _PhoneNumberValidationState extends State<PhoneNumberValidation> {

  late PhoneController controller;
  bool outlineBorder = true;
  bool mobileOnly = true;
  bool shouldFormat = true;
  bool isCountryChipPersistent = false;
  bool withLabel = true;
  bool useRtl = false;
  CountrySelectorNavigator selectorNavigator =
  const CountrySelectorNavigator.searchDelegate();
  final formKey = GlobalKey<FormState>();
 // final phoneKey = GlobalKey<FormFieldState<PhoneNumber>>();

  @override
  initState() {
    super.initState();
    controller = PhoneController(null);
    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


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
                        onChanged: (v) =>
                            setState(() => outlineBorder = v ),
                      title: Text('Outlined border'),
                    ),

                    SwitchListTile(
                        value: withLabel,
                        onChanged: (v) =>
                            setState(() => withLabel = v),
                      title: Text('Label'),
                    ),

                    SwitchListTile(
                        value: isCountryChipPersistent,
                        onChanged: (v) =>
                            setState(() => isCountryChipPersistent = v),
                      title : Text('Persistent Country Chip'),
                    ),

                    SwitchListTile(
                      value: mobileOnly,
                      onChanged: (v) =>
                          setState(() => mobileOnly = v),
                      title : Text('Mobile Phone Number Only'),
                    ),

                    SwitchListTile(
                      value: shouldFormat,
                      onChanged: (v) =>
                          setState(() => shouldFormat= v),
                      title : Text('Should Format'),
                    ),

                    SwitchListTile(
                      value: useRtl,
                      onChanged: (v) =>
                          setState(() => useRtl = v),
                      title : Text('RTL'),
                    ),

                    ListTile(
                      title: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text('Country Selector'),
                          DropdownButton<CountrySelectorNavigator>(
                              value: selectorNavigator,
                            onChanged: (CountrySelectorNavigator? value) {
                                if(value != null) {
                                  setState(() =>
                                      selectorNavigator = value);
                                }
                            }, items: [

                          ],
                          ),
                        ],
                      ),
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
