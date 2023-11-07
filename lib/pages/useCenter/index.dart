import 'package:flutter/material.dart';

class UserCenterComponent extends StatefulWidget {
  const UserCenterComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return UserCenterComponentState();
  }
}

class UserCenterComponentState extends State<UserCenterComponent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("UserCenter")),
    );
  }
}
