import 'package:flutter/material.dart';

void main() => runApp(const FlullterApp());

class FlullterApp extends StatelessWidget {
  const FlullterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
