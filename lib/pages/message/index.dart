import 'package:flutter/material.dart';

class MessageComponent extends StatefulWidget {
  const MessageComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return MessageComponentState();
  }
}

class MessageComponentState extends State<MessageComponent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Message")),
    );
  }
}
