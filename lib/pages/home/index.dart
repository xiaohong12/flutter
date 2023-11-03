import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("HomePage"),
          centerTitle: true,
        ),
        body: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, '蒋小洪');
                },
                child: const Center(child: Text("Back")))));
  }
}
