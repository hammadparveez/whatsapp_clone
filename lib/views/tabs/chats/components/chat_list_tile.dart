import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/models/chat_model/chat_model.dart';
import 'package:whatsapp_clone/views/components/custom_tile.dart';

class ChatListTile extends CustomTile<ChatModel> {
  const ChatListTile({
    Key? key,
    required this.user,
    VoidCallback? onTap,
    VoidCallback? onLongTap,
  }) : super(key: key, model: user, onLongTap: onLongTap, onTap: onTap);

  final ChatModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      onLongPress: onLongTap,
      leading: CircleAvatar(child: Image.asset(user.profileImage)),
      title: Text(user.senderName, maxLines: 1),
      subtitle: Text(user.senderName + ': ' + user.msg,
          maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(user.time,
                style: context.style.subtitle1
                    ?.copyWith(color: kLightDarkGrey, fontSize: 12)),
            user.isRead ? const UnReadMsgCountWidget() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class UnReadMsgCountWidget extends StatelessWidget {
  const UnReadMsgCountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      margin: const EdgeInsets.only(right: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.secondaryColor,
      ),
      child: Text("24",
          style: context.style.bodyText2?.copyWith(
              color: kWhiteColor, fontSize: 11, fontWeight: FontWeight.w500)),
    );
  }
}
