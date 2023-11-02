import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //获取router 传递参数
    final list = ModalRoute.of(context)!.settings.arguments;
    return MaterialApp(
        title: "Home Page",
        home: Scaffold(
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
                    child: const Center(child: Text("Back"))))));
  }
}
