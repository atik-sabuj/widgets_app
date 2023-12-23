import 'package:flutter/material.dart';

class MessageGroupWithTimeStamp extends StatefulWidget {
  const MessageGroupWithTimeStamp({super.key});

  @override
  State<MessageGroupWithTimeStamp> createState() => _MessageGroupWithTimeStampState();
}

class _MessageGroupWithTimeStampState extends State<MessageGroupWithTimeStamp> {

  //message controller
  final messageController = TextEditingController();

  //scroll controller
  ScrollController _scrollController = new ScrollController();

  List<MessageModel> messagesList = [          ];

  //function to convert time stamp to date
  static DateTime returnDateAndTimeFormat(String time){   }

  //function to convert time stamp to date
  static String messageTime(String time){   }


  //function to return message time in 24 hours format
  static String messageTime(String time){

    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));

    String difference = '';
    difference = DateFormat('jm').format(dt).toString();
    return difference;
  }


  //function to return date if date changes based on your local date and time
  static String groupMessageDateAndTime(String time) {   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Group with TIME Stamp'),
        centerTitle: true,
      ),
    );
  }
}


//model for messages
class MessageModel {
  int timeStamp;
  String message;
  bool isMe;
  MessageModel({required this.timeStamp, required this.message, required this.isMe});
}


//Creating bubble
class MessageBubble extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  MessageBubble({
    required this.color,
    required this.alignment,
    required this.tail
});
}