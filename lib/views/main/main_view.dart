import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/tabs_controller.dart';
import 'package:whatsapp_clone/res/strings.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/app_flexiblebar.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class MainView extends ConsumerWidget {
  const MainView({Key? key}) : super(key: key);

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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.light,
                  statusBarColor: context.primaryColor),
              flexibleSpace: const AppFlexibleBar(),
              bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 3,
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                tabs: [
                  _cameraIconTab(cameraTabWidth),
                  _tabWithTitle(tabWidth, 'Chats'),
                  _tabWithTitle(tabWidth, 'Status'),
                  _tabWithTitle(tabWidth, 'Calls'),
                ],
              ),
            ),
          ],
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
        child: Text(title));
  }
}
