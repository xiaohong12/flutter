import 'package:flutter/material.dart';

class MessageComponent extends StatefulWidget {
  const MessageComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return MessageComponentState();
  }
}

class MessageComponentState extends State<MessageComponent>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Scaffold(
      body: Center(child: Text("Message")),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
