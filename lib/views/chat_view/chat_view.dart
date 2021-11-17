import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/chat_view/components/chat_bubble_widget.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/chat_view/mock_chats.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Size get preferredSize => const Size(double.infinity, 54);

  @override
  Widget build(BuildContext context, ref) {
    return AnimatedSwitcher(
      child: ref.watch(messageController).selectedItems.isEmpty
          ? child
          : const MsgSelectedAppBar(),
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (widget, animation) {
        return FadeTransition(child: widget, opacity: animation);
      },
    );

    // return AnimatedCrossFade(
    //   alignment: Alignment.center,
    //   firstChild: child,
    //   secondChild: AppBar(
    //     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
    //   ),
    //   crossFadeState: ref.watch(messageController).selectedItems.isNotEmpty
    //       ? CrossFadeState.showSecond
    //       : CrossFadeState.showFirst,
    //   duration: Duration(milliseconds: 250),
    // );
  }
}

class MsgSelectedAppBar extends ConsumerWidget {
  const MsgSelectedAppBar({
    Key? key,
  }) : super(key: key);

  final _overlayColor =
      const SystemUiOverlayStyle(statusBarColor: kDarkPrimaryColor);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(messageController);
    return AppBar(
        systemOverlayStyle: _overlayColor,
        backgroundColor: kDarkPrimaryColor,
        title: Text(controller.selectedItems.length.toString()),
        actions: [
          controller.selectedItems.length > 1
              ? const SizedBox()
              : CustomIconButton(onTap: () {}, icon: const Icon(Icons.reply)),
          CustomIconButton(onTap: () {}, icon: const Icon(Icons.star)),
          CustomIconButton(onTap: () {}, icon: const Icon(Icons.delete)),
          !(controller.selectedItems.length > 1)
              ? const SizedBox()
              : CustomIconButton(onTap: () {}, icon: const Icon(Icons.copy)),
          CustomIconButton(
              onTap: () {}, icon: const Icon(Icons.reply_all_rounded)),
          controller.selectedItems.length > 1
              ? const SizedBox()
              : CustomIconButton(
                  onTap: () {}, icon: const Icon(Icons.more_vert_rounded)),
        ]);
  }
}

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
      appBar: CustomAppBar(
        child: _buildAppBar(context),
      ),
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
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: context.primaryColor),
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
