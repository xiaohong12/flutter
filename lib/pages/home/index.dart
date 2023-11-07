import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home/home.dart';
import 'package:flutter_demo_1/pages/message/index.dart';
import 'package:flutter_demo_1/pages/shopping/index.dart';
import 'package:flutter_demo_1/pages/useCenter/index.dart';

class HomeInitComponent extends StatefulWidget {
  const HomeInitComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeInitComponentState();
  }
}

class HomeInitComponentState extends State<HomeInitComponent> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  List<BottomNavigationBarItem> bottomNavigationBarList = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
    BottomNavigationBarItem(icon: Icon(Icons.shop), label: "购物"),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "我")
  ];

  late List<Widget> bottomWidgetList;

  @override
  void initState() {
    super.initState();
    initBottomWidgetList();
  }

  void changeSelectIndex(int newValue) {
    setState(() {
      selectedIndex = newValue;
    });
  }

  void initBottomWidgetList() {
    bottomWidgetList = const [
      HomeComponent(),
      MessageComponent(),
      ShoppingComponent(),
      UserCenterComponent()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (activeKey) {
              setState(() {
                changeSelectIndex(activeKey);
                _pageController.jumpToPage(activeKey);
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            items: bottomNavigationBarList),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(), // 禁止滑动
          controller: _pageController,
          onPageChanged: (int index) => selectedIndex = index,
          children: bottomWidgetList,
        ));
  }
}
