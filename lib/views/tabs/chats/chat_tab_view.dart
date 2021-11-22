import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/config/auto_route.dart';
import 'package:whatsapp_clone/config/routes.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/views/tabs/chats/components/chat_list_tile.dart';
import 'package:whatsapp_clone/views/tabs/chats/mock_models.dart';

class ChatTabView extends ConsumerWidget {
  const ChatTabView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.message)),
      body: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (_, index) {
              final user = mockList[index];
              return ChatListTile(
                user: user,
                onLongTap: () {
                  ref.read(chatTabItemController).selectItem(user);
                },
                onTap: () {
                  // AutoRouter.of(context).pushNamed(const ChatRoute().path);

                  if (ref.read(chatTabItemController).isAnyItemSelected) {
                    ref.read(chatTabItemController).selectItem(user);
                  } else {
                    AutoRouter.of(context).pushNamed(const ChatRoute().path);
                  }
                },
              );
            },
            childCount: mockList.length,
          )),
        ],
      ),
    );
  }
}
