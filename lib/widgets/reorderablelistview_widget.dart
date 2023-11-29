import 'package:flutter/material.dart';

class ReorderableWidget extends StatefulWidget {
  const ReorderableWidget({super.key});

  @override
  State<ReorderableWidget> createState() => _ReorderableWidgetState();
}

class _ReorderableWidgetState extends State<ReorderableWidget> {

  List<String> _productList = ['Apple', 'Mango', 'Bananna', 'Strabery', 'Cherry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FolMul.com'),
      ),

      body: ReorderableListView.builder(
          itemBuilder: (context, index){
            return Card(
              key: ValueKey(_productList[index]),
              child: ListTile(
                title: Text(_productList[index]),
              ),
            );
          },

          itemCount: _productList.length,
          onReorder: (oldIndex, newIndex){
            setState(() {
              if(newIndex > oldIndex) {
                newIndex = newIndex - 1;
              }
              final element = _productList.removeAt(oldIndex);
              _productList.insert(newIndex, element);
            });

          }
      ),
    );
  }
}
