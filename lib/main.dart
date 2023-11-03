import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import "router/index.dart";
import "router/application.dart";

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(const FlullterApp());
}

class FlullterApp extends StatelessWidget {
  const FlullterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Loan App',
        debugShowCheckedModeBanner: false, //隐藏头部的环境表示
        onGenerateRoute: Application.router.generator);
  }
}
