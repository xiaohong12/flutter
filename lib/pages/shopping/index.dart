import 'package:flutter/material.dart';

class ShoppingComponent extends StatefulWidget {
  const ShoppingComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return ShoppingComponentState();
  }
}

class ShoppingComponentState extends State<ShoppingComponent>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Shopping")),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
