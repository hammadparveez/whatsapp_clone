import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/main.dart';

import 'package:whatsapp_clone/views/chat_view/components/chat_bubble_widget.dart';
import 'package:whatsapp_clone/views/chat_view/components/chat_selected_appbar.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/chat_view/mock_chats.dart';
import 'package:whatsapp_clone/views/components/custom_appbar.dart';

class ChatView extends ConsumerStatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> with RestorationMixin {
  final _scrollIndex = RestorableDouble(0);
  late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    WidgetsBinding.instance!
        .addPostFrameCallback((timeStamp) => _scrollToIndex());
  }

  void _scrollToIndex() async {
    if (_controller.hasClients) {
      _controller.animateTo(
        _scrollIndex.value,
        duration: Duration(milliseconds: 2500),
        curve: Curves.linear,
      );

      _controller.addListener(() {
        _scrollIndex.value = _controller.position.pixels;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    cacheKeyboardHeight =
        cacheKeyboardHeight ?? (keyboardHeight > 0 ? keyboardHeight : null);
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
                  controller: _controller,
                  itemCount: chats.length,
                  itemBuilder: (_, index) {
                    var chat = chats[index];
                    var child = ChatBubbleWidget(chat: chat, index: index);
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

  @override
  // TODO: implement restorationId
  String? get restorationId => 'scroll_view';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    // TODO: implement restoreState
    registerForRestoration(_scrollIndex, 'scroll_index');
  }
}
