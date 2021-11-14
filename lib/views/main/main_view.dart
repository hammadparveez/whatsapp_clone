import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/tabs_controller.dart';
import 'package:whatsapp_clone/res/colors.dart';

import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/calls/call_logs_view.dart';
import 'package:whatsapp_clone/views/camera/camera_view.dart';
import 'package:whatsapp_clone/views/chats/chat_view.dart';
import 'package:whatsapp_clone/views/components/app_flexiblebar.dart';
import 'package:whatsapp_clone/views/status/status_view.dart';

class MainView extends ConsumerWidget {
  const MainView({Key? key}) : super(key: key);

  final _tabs = const [
    CameraView(),
    ChatView(),
    StatusView(),
    CallsView(),
  ];

  @override
  Widget build(BuildContext context, ref) {
    var cameraTabWidth = 40.0;
    var defaultPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    var remainingWidth = width - (cameraTabWidth + defaultPadding);
    var tabWidth = (remainingWidth / 3) - defaultPadding;

    return Scaffold(
      body: DefaultTabController(
        length: TabsViewController.tabsLength,
        child: NestedScrollView(
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
          body: TabBarView(children: _tabs),
        ),
      ),
    );
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
