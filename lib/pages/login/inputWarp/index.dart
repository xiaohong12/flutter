import 'package:flutter/material.dart';

class LoginWarp extends StatefulWidget {
  const LoginWarp({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginWarpState();
  }
}

class LoginWarpState extends State<LoginWarp> {
  final TextEditingController nameController = TextEditingController(text: "初");
  final TextEditingController psdController = TextEditingController(text: "密码");

  String userNameLabel = '用户名';
  String passwoldLabel = '密码';

  String getValue() {
    nameController.text = "新密码";
    psdController.text = '新用户';
    return nameController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(
            20.0,
            30,
            20.0,
            20.0,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30.0),
                right: Radius.circular(30.0),
              )),
          transform: Matrix4.translationValues(0.0, -50, 0.0),
          child: ListView(
            children: [
              LoginInputWarp(
                  controller: nameController,
                  modalTpe: 1,
                  inputLabel: userNameLabel),
              LoginInputWarp(
                  controller: psdController,
                  modalTpe: 2,
                  inputLabel: passwoldLabel),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  10,
                  40,
                  10,
                  0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: OutlinedButton(
                      onPressed: () {
                        print(getValue());
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color.fromARGB(136, 114, 81, 1);
                              }
                              return const Color.fromARGB(136, 114, 81, 1);
                            },
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      child: const Text(
                        '登录',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}

class LoginInputWarp extends StatefulWidget {
  final TextEditingController controller;
  final int modalTpe;
  final String inputLabel;

  const LoginInputWarp(
      {super.key,
      required this.controller,
      required this.modalTpe,
      required this.inputLabel});

  @override
  State<StatefulWidget> createState() {
    return LoginInputWidget();
  }
}

class LoginInputWidget extends State<LoginInputWarp> {
  @override
  void initState() {
    super.initState();
  }

  EdgeInsets formatMargin() {
    return widget.modalTpe == 1
        ? const EdgeInsets.fromLTRB(10, 0, 0, 15)
        : const EdgeInsets.fromLTRB(10, 20, 0, 15);
  }

  bool get isUserInput {
    return widget.modalTpe == 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: formatMargin(),
            child: Text(widget.inputLabel.toString(),
                style: const TextStyle(
                  fontSize: 18,
                ))),
        TextField(
          maxLength: 10,
          controller: widget.controller,
          obscureText: !isUserInput,
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
              counterText: '',
              prefixIcon:
                  Icon(widget.modalTpe == 1 ? Icons.person : Icons.password),
              prefixIconColor: const Color.fromARGB(136, 114, 81, 1),
              border: const OutlineInputBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              isDense: true,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: BorderSide(color: Color.fromARGB(136, 114, 81, 1)),
              )),
        )
      ],
    );
  }
}
