import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';

import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';

import 'package:whatsapp_clone/views/chat_view/components/chat_bubble_widget.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/chat_view/mock_chats.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final overlay = GlobalKey<OverlayState>();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var chats = MockChats().chats;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.chatBg,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (_, index) {
                  var chat = chats[index];
                  return ChatBubbleWidget(chat: chat);
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
      titleTextStyle: context.style.subtitle2?.copyWith(
          height: 1.5,
          color: kWhiteColor,
          fontSize: 15,
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.normal),
      leadingWidth: 70,
      titleSpacing: 0,
      leading: Container(
        margin: EdgeInsets.all(8),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: Row(
            children: [
              Icon(Icons.arrow_back, size: 24),
              Flexible(child: Assets.images.avatar.image(height: 35)),
            ],
          ),
        ),
      ),
      title: InkWell(
        onTap: () {},
        child: Row(
          children: [
            //  Assets.images.avatar.image(height: 35),
            const SizedBox(width: 5),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hammad Parveez Alex Murphy'),
                  Text('online', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        CustomIconButton(icon: Icon(Icons.videocam_rounded), onTap: () {}),
        CustomIconButton(icon: Icon(Icons.phone), onTap: () {}),
        CustomIconButton(icon: Icon(Icons.more_vert), onTap: () {}),
      ],
    );
  }
}
