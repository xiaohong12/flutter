import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/login/inputWarp/index.dart';

class LoginCompont extends StatelessWidget {
  const LoginCompont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: const Column(
              children: [LoginHeard(), LoginWarp()],
            )));
  }
}

class LoginHeard extends StatelessWidget {
  const LoginHeard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 280,
          child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('lib/assets/login/login_heard.png')),
        ),
        const Positioned(
            top: 120,
            bottom: 0,
            left: 20,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("登录", style: TextStyle(color: Colors.white, fontSize: 26)),
                Text("欢迎来到Flutter-App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ],
            )),
      ],
    );
  }
}
