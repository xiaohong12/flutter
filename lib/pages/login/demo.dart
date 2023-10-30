import 'package:flutter/material.dart';

void main() => runApp(const FlullterApp());

class FlullterApp extends StatelessWidget {
  const FlullterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Center(
          //     child: Text("首页"),
          //   ),
          //   actions: const [Icon(Icons.calendar_month)],
          //   leading: const Icon(Icons.arrow_back),
          // ),
          // body: const Center(
          //   child: BottomSheetBtn(),
          // ),
          // primary: true,
          // persistentFooterAlignment: AlignmentDirectional.topCenter,
          // floatingActionButton: FloatingActionButton(
          //   child: const Text("按钮"),
          //   onPressed: () {
          //     print('我被点击了');
          //   },
          // ),
          // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          // drawer: const Text("drawer"),
          // onDrawerChanged: (bool isOpened) => {print(isOpened)},
          // bottomNavigationBar: const MyFulBottomNavigationBar(),
          ),
    );
  }
}

class MyFulBottomNavigationBar extends StatefulWidget {
  const MyFulBottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() {
    // 将创建的State返回
    return MyBottomNavigationBarState();
  }
}

class MyBottomNavigationBarState extends State<StatefulWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessible),
          label: 'accessible',
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

class MyBottomSheetWidget extends StatelessWidget {
  const MyBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => {},
      builder: (context) {
        return Container(
          height: 300,
          color: Colors.yellow,
          alignment: Alignment.centerLeft,
          child: const Text("BottomSheet In Scaffold"),
        );
      },
    );
  }
}

class BottomSheetBtn extends StatelessWidget {
  const BottomSheetBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("showBottomSheet"),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: 414,
              height: 300,
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Center(
                  child: Text("Close"),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
