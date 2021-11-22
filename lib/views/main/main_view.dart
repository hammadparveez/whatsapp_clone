import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/tabs_controller.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/res/colors.dart';

import 'package:whatsapp_clone/res/extensions.dart';

import 'package:whatsapp_clone/views/components/app_flexiblebar.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

import 'package:whatsapp_clone/views/tabs/calls/calls_logs_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/camera/camera_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/chats/chat_tab_view.dart';
import 'package:whatsapp_clone/views/tabs/status/status_tab_view.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cameraTabWidth = 40.0;
    var defaultPadding = 20.0;
    var width = MediaQuery.of(context).size.width;
    var remainingWidth = width - (cameraTabWidth + defaultPadding);
    var tabWidth = (remainingWidth / 3) - defaultPadding;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, __) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: ref.watch(chatTabItemController).isAnyItemSelected
                    ? _secondaryAppBar()
                    : _buildPrimaryAppBar(context, cameraTabWidth, tabWidth),
              ),
              // _buildPrimaryAppBar(context, cameraTabWidth, tabWidth),
            ),
          ];
        },
        body: TabBarView(controller: _controller, children: _tabs),
      ),
    );
  }

  SliverAppBar _secondaryAppBar() {
    var controller = ref.read(chatTabItemController);
    var totalItemSelected =
        ref.watch(chatTabItemController).selectedItems.length.toString();
    return SliverAppBar(
      key: const ValueKey('sec-app-bar'),
      pinned: true,
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => controller.unselectAll()),
      title: Text(totalItemSelected),
      actions: const [
        CustomIconButton(icon: Icon(Icons.star)),
        CustomIconButton(icon: Icon(Icons.edit)),
        CustomIconButton(icon: Icon(Icons.delete)),
        CustomIconButton(icon: Icon(Icons.more_vert)),
      ],
    );
  }

  SliverAppBar _buildPrimaryAppBar(
      BuildContext context, double cameraTabWidth, double tabWidth) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 100,
      forceElevated: true,
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
