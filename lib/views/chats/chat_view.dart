import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/chats/components/chat_list_tile.dart';
import 'package:whatsapp_clone/views/chats/mock_models.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockList.length,
      itemBuilder: (_, index) {
        final user = mockList[index];
        return ChatListTile(user: user);
      },
    );
  }
}
