import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: context.style.subtitle2?.copyWith(
            height: 1.5,
            color: kWhiteColor,
            fontSize: 15,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.normal),
        leadingWidth: 20,
        title: Row(
          children: [
            Assets.images.avatar.image(height: 35),
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
        actions: [
          CustomIconButton(icon: Icon(Icons.videocam_rounded), onTap: () {}),
          CustomIconButton(icon: Icon(Icons.phone), onTap: () {}),
          CustomIconButton(icon: Icon(Icons.more_vert), onTap: () {}),
        ],
      ),
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
                itemCount: 50,
                itemBuilder: (_, index) {
                  return Align(
                    alignment: index % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: SizedBox(
                      width: context.width * .85,
                      child: Bubble(
                        margin: const BubbleEdges.symmetric(
                            horizontal: 8, vertical: 4),
                        nip: index % 2 == 0
                            ? BubbleNip.leftTop
                            : BubbleNip.rightTop,
                        color: index % 2 == 0 ? kWhiteColor : kChatColor,
                        child: Text(
                            'Hello, World! What were you doing today ere you doing today ',
                            textAlign: TextAlign.right),
                      ),
                    ),
                  );
                },
              ),
            ),
            const MessageTypeContainer(),
          ],
        ),
      ),
    );
  }
}

class MessageTypeContainer extends StatelessWidget {
  const MessageTypeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      color: kCreamColor,
      child: Row(children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              _buildMessageIcon(Icons.emoji_emotions_outlined, () {}),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    isCollapsed: true,
                    isDense: true,
                    hintText: 'Message',
                    border: InputBorder.none,
                  ),
                ),
              ),
              _buildMessageIcon(Icons.attach_file, () {}),
              _buildMessageIcon(Icons.camera_alt, () {}),
            ],
          ),
        )),
        const SizedBox(width: 8),
        Material(
          color: context.primaryColor,
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          child: IconButton(
            color: kWhiteColor,
            icon: Icon(Icons.mic),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }

  Material _buildMessageIcon(IconData icon, [VoidCallback? onTap]) {
    return Material(
      type: MaterialType.transparency,
      child: CustomIconButton(
        splashSize: 15,
        factorWidth: .8,
        icon: Icon(icon, size: 20),
        onTap: onTap,
      ),
    );
  }
}
