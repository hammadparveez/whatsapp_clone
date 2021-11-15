import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';

import 'package:whatsapp_clone/views/chats/components/chat_list_tile.dart';
import 'package:whatsapp_clone/views/chats/mock_models.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';
import 'package:whatsapp_clone/res/extensions.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (_, index) {
            final user = mockList[index];
            return ListTile(
              leading: CircleAvatar(
                child: Assets.images.avatar.image(),
              ),
              title: Text(user.senderName),
              subtitle: Row(
                children: [
                  Icon(Icons.missed_video_call_rounded),
                  const SizedBox(width: 10),
                  Text(user.time),
                ],
              ),
              trailing: CustomIconButton(
                icon: Icon(Icons.phone, color: context.primaryColor),
                onTap: () {},
              ),
            );
          },
          childCount: mockList.length,
        )),
      ],
    );
  }
}
