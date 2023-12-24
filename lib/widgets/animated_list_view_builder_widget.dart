import 'package:flutter/material.dart';

class AnimatedListViewBuilderWidget extends StatefulWidget {
  const AnimatedListViewBuilderWidget({super.key});

  @override
  State<AnimatedListViewBuilderWidget> createState() => _AnimatedListViewBuilderWidgetState();
}

class _AnimatedListViewBuilderWidgetState extends State<AnimatedListViewBuilderWidget> {

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  List<int> item = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List View Builder Widget'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          listKey.currentState!.insertItem(0, duration: Duration(milliseconds: 400));
          item = []..add(count++)
          ..addAll(item);
        },
      ),

      body: SafeArea(
        child: AnimatedList(
          key: listKey,
          initialItemCount: item.length,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
                sizeFactor: animation,
              axis: Axis.vertical,
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Text('item '+item[index].toString(), style: Theme.of(context).textTheme.headlineSmall,),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
