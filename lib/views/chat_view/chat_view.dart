import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';

import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';

import 'package:whatsapp_clone/views/chat_view/components/chat_bubble_widget.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/chat_view/mock_chats.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var chats = MockChats().chats;
    var _bgImageDecoration = BoxDecoration(
          image: DecorationImage(
            image: Assets.images.chatBg,
            fit: BoxFit.cover,
          ),
        );
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        decoration: _bgImageDecoration,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (_, index) {
                  var chat = chats[index];
                  var child = ChatBubbleWidget(chat: chat);
                  return (index == 0)
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: child,
                        )
                      : child;
                },
              ),
            ),
            const MessageTypeContainer(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      titleTextStyle: _appBarTextStyle(context),
      leadingWidth: 70,
      titleSpacing: 0,
      leading: Container(
        margin: const EdgeInsets.all(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () => Navigator.pop(context),
          child: Row(
            children: [
              const Icon(Icons.arrow_back),
              Flexible(child: Assets.images.avatar.image()),
            ],
          ),
        ),
      ),
      title: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hammad Parveez Alex Murphy'),
            Text('online', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
      actions: [
        CustomIconButton(
            icon: const Icon(Icons.videocam_rounded), onTap: () {}),
        CustomIconButton(icon: const Icon(Icons.phone), onTap: () {}),
        CustomIconButton(icon: const Icon(Icons.more_vert), onTap: () {}),
      ],
    );
  }

  TextStyle? _appBarTextStyle(BuildContext context) {
    return context.style.subtitle2?.copyWith(
        height: 1.5,
        color: kWhiteColor,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.normal);
  }
}
