import 'package:flutter/material.dart';
import "../../router/fluro_navigator.dart";

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
                  NavigatorUtils.push((context), '/login', arguments: "5555");
                },
                child: const Center(child: Text("Back")))));
  }
}
