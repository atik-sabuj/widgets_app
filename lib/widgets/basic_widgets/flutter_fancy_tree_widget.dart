import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

// Create a class to hold your hierarchical data (optional, could be a Map or
// any other data structure that's capable of representing hierarchical data.


class CommentsModel {
  const CommentsModel({
    required this.title,
    this.children = const <CommentsModel>[],
  });

  final String title;
  final List<CommentsModel> children;
}

class ReplyModelList {
  const ReplyModelList({
    required this.title,
    this.children = const <ReplyModelList>[],
  });

  final String title;
  final List<ReplyModelList> children;
}


class FlutterFancyTreeWidget extends StatefulWidget {
  const FlutterFancyTreeWidget({super.key});

  @override
  State<FlutterFancyTreeWidget> createState() => _FlutterFancyTreeWidgetState();
}

class _FlutterFancyTreeWidgetState extends State<FlutterFancyTreeWidget> {

  // In this example a static nested tree is used, but your hierarchical data
  // can be composed and stored in many different ways.

  static const List<CommentsModel> commentsList = <CommentsModel>[
    CommentsModel(
      title: 'Root 1',
      children: <CommentsModel>[
        CommentsModel(
          title: 'Node 1.1',
        ),
        CommentsModel(title: 'Node 1.2'),
      ],
    ),

    CommentsModel(
      title: 'Root 2',
      children: <CommentsModel>[
        CommentsModel(
          title: 'Node 2.1',

        ),
        CommentsModel(title: 'Node 2.2')
      ],
    ),

  ];

  // This controller is responsible for both providing your hierarchical data
  // to tree views and also manipulate the states of your tree nodes.

  late final TreeController<CommentsModel> treeController;

  @override
  void initState() {
    super.initState();
    treeController = TreeController<CommentsModel>(

      // Provide the root nodes that will be used as a starting point when
      // traversing your hierarchical data.

      roots: commentsList,

      // Provide a callback for the controller to get the children of a
      // given node when traversing your hierarchical data. Avoid doing
      // heavy computations in this method, it should behave like a getter.

      childrenProvider: (CommentsModel node) => node.children,
    );
  }

  @override
  void dispose() {

    // Remember to dispose your tree controller to release resources.

    treeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // experiences.

