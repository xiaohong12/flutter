import 'package:flutter/material.dart';

class EmptyComponent extends StatelessWidget {
  const EmptyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Empty Page",
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text("EmptyPage"),
              centerTitle: true,
            ),
            body: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: const Text('EmptyPage'))));
  }
}
