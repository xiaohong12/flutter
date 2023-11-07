import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeComponentState();
  }
}

class HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home")),
    );
  }
}
