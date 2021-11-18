import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/tabs_controller.dart';
import 'package:whatsapp_clone/res/colors.dart';

import 'package:whatsapp_clone/res/extensions.dart';

import 'package:whatsapp_clone/views/components/app_flexiblebar.dart';

import 'package:whatsapp_clone/views/tabs/calls/calls_logs_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/camera/camera_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/chats/chat_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/status/status_tab_view.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  final _tabs = const [
    CameraTabView(),
    ChatTabView(),
    StatusTabView(),
    CallsTabView(),
  ];

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: TabsViewController.tabsLength, vsync: this);

    _controller.addListener(() {
      print("Changing");

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var cameraTabWidth = 40.0;
    var defaultPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    var remainingWidth = width - (cameraTabWidth + defaultPadding);
    var tabWidth = (remainingWidth / 3) - defaultPadding;

    return Scaffold(
      floatingActionButton: _floatingActionButton(),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 100,
              shadowColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.light,
                  statusBarColor: context.primaryColor),
              flexibleSpace: const AppFlexibleBar(),
              bottom: TabBar(
                controller: _controller,
                indicatorColor: kLightGrey,
                isScrollable: true,
                indicatorWeight: 3.5,
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                tabs: [
                  _cameraIconTab(cameraTabWidth),
                  _tabWithTitle(tabWidth, 'Chats'),
                  _tabWithTitle(tabWidth, 'Status'),
                  _tabWithTitle(tabWidth, 'Calls'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(controller: _controller, children: _tabs),
      ),
    );
  }

  Widget? _floatingActionButton() {
    return Builder(builder: (context) {
      final index = _controller.index;
      print("Index $index");
      switch (index) {
        case 1:
          return FloatingActionButton(
              onPressed: () {}, child: Icon(Icons.message));
        case 2:
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                  mini: true, onPressed: () {}, child: Icon(Icons.edit)),
              const SizedBox(height: 10),
              FloatingActionButton(
                  mini: true, onPressed: () {}, child: Icon(Icons.camera_alt)),
            ],
          );
        case 3:
          return FloatingActionButton(
              onPressed: () {}, child: Icon(Icons.phone));
        default:
          return const SizedBox();
      }
    });
  }

  Container _cameraIconTab(double cameraTabWidth) {
    return Container(
      width: cameraTabWidth,
      alignment: Alignment.center,
      height: 30,
      child: const Icon(Icons.camera_alt),
    );
  }

  Container _tabWithTitle(double tabWidth, String title) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: tabWidth,
        child: Text(title.toUpperCase()));
  }
}
