import 'package:flutter/material.dart';
import 'package:flutter_demo_1/components/MyCustomIndicator.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeComponentState();
  }
}

class HomeComponentState extends State<HomeComponent>
    with AutomaticKeepAliveClientMixin {
  int activeTab = 0;
  @override
  bool get wantKeepAlive => true;
  late List<Widget> tabWidgetList = [];

//初始化生命周期
  @override
  void initState() {
    super.initState();
    renderTabWidgetList();
  }

  //销毁生命周期
  @override
  void dispose() {
    super.dispose();
  }

  renderTabWidgetList() {
    tabWidgetList = [
      const Center(
        child: Text("It's Table One"),
      ),
      const Center(
        child: Text("It's Table Two"),
      ),
      const Center(
        child: Text("It's Table Three"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      initialIndex: activeTab,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1, //阴影高度
            title: TabBar(
              padding: const EdgeInsets.only(left: 25, right: 25),
              dividerColor: Colors.transparent,
              labelColor: const Color.fromRGBO(51, 51, 51, 1),
              unselectedLabelColor: const Color.fromRGBO(51, 51, 51, 0.7),
              onTap: (value) {
                setState(() {
                  activeTab = value;
                });
              },
              indicator: const MyCustomIndicator(),
              tabs: const <Widget>[
                Tab(
                  text: '关注',
                ),
                Tab(
                  text: '发现',
                ),
                Tab(
                  text: '深圳',
                ),
              ],
            ),
            leading: const Icon(
              Icons.circle_notifications_outlined,
              color: Colors.black,
            ),
            centerTitle: true,
            actions: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.search, color: Colors.black),
              )
            ]),
        body: TabBarView(
          children: tabWidgetList,
        ),
      ),
    );
  }
}
