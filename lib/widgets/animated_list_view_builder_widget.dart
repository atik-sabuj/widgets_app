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

        actions: [
          IconButton(onPressed: (){
            listKey.currentState!.removeItem(0, (context, animation) => sizeIt(context, 0, animation),
            duration: Duration(milliseconds: 400),
            );
            item.removeAt(0);
          }, icon: Icon(Icons.remove_circle_outline)),
        ],
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

  Widget slideIt(BuildContext context, int index, animation){
    int newItem = item[index];
    return SlideTransition(

      position: Tween<Offset>(
        begin: Offset(-1,0),
        end: Offset(0,0),
      ).animate(animation),

      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Text('item '+newItem.toString(), style: Theme.of(context).textTheme.headlineSmall,),
        ),
      ),
    );

  }

  Widget sizeIt(BuildContext context, int index, animation){
    int newItem = item[index];
    return SizeTransition(
      sizeFactor: animation,
      axis: Axis.vertical,
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Text('item '+newItem.toString(), style: Theme.of(context).textTheme.headlineSmall,),
        ),
      ),
    );

  }

}
