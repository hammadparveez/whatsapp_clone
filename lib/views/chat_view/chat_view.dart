import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/chat_view/components/chat_bubble_widget.dart';
import 'package:whatsapp_clone/views/chat_view/components/chat_selected_appbar.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/chat_view/mock_chats.dart';
import 'package:whatsapp_clone/views/components/custom_appbar.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    cacheKeyboardHeight = cacheKeyboardHeight ?? (keyboardHeight > 0 ? keyboardHeight : null);
    var chats = MockChats().chats;
    var _bgImageDecoration = BoxDecoration(
      image: DecorationImage(
        image: Assets.images.chatBg,
        fit: BoxFit.cover,
      ),
    );
    return Scaffold(
      appBar: const CustomAppBar(
        primaryAppbar: MessageAppBar(),
        secondaryAppBar: MessageSelectedAppBar(),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
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
              MessageTypeContainer(height: constraints.maxHeight),
            ],
          ),
        );
      }),
    );
  }
}
