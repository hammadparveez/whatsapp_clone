import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/routes.dart';
import 'package:whatsapp_clone/views/tabs/chats/components/chat_list_tile.dart';
import 'package:whatsapp_clone/views/tabs/chats/mock_models.dart';

class ChatTabView extends StatelessWidget {
  const ChatTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onTap: () =>
                    Navigator.restorablePushNamed(context, Routes.chatView),
              );
            },
            childCount: mockList.length,
          )),
        ],
      ),
    );
  }
}
