import 'package:flutter/material.dart';
import 'pages/login/index.dart';

void main() => runApp(const FlullterApp());

class FlullterApp extends StatelessWidget {
  const FlullterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Loan App',
        debugShowCheckedModeBanner: false, //隐藏头部的环境表示
        home: LoginScaffold());
  }
}
