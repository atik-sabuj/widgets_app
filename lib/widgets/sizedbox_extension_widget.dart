import 'package:flutter/material.dart';

class SizedBoxExtensionWidget extends StatelessWidget {
  const SizedBoxExtensionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Extention Widget'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),

            //const SizedBox(height: 100,),
            100.ph,

            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),

            //const SizedBox(height: 50,),
            50.ph,

            Container(
              height: 100,
              width: double.infinity,
              color: Colors.yellow,
            ),

            //const SizedBox(height: 100,),
            100.ph,

            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),

                //const SizedBox(width: 20,),
                20.pw,

                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),

                //const SizedBox(width: 20,),
                20.pw,

                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


//PaddingHeight(ph) & PaddingWeight(pw)

extension Padding on num {

  SizedBox get ph => SizedBox(height: toDouble(),);
  SizedBox get pw => SizedBox(width: toDouble(),);

}
