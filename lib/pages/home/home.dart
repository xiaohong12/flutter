import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeComponentState();
  }
}

class HomeComponentState extends State<HomeComponent>
    with AutomaticKeepAliveClientMixin {
  int count = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(
          child: Text('Second: $count', style: const TextStyle(fontSize: 30))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
