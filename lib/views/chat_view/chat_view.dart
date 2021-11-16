import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/chat_view/components/message_type_container.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            'Hello, World! What were you doing today were you doing today'),
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
