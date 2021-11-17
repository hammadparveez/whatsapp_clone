import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final MessageModel chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: context.width * .85,
        minWidth: context.width * .4,
      ),
      alignment: !chat.isSent ? Alignment.centerLeft : Alignment.centerRight,
      child: Stack(
        children: [
          Bubble(
            padding: const BubbleEdges.all(0),
            margin: const BubbleEdges.symmetric(horizontal: 8, vertical: 4),
            nip: !chat.isSent ? BubbleNip.leftTop : BubbleNip.rightTop,
            color: !chat.isSent ? kWhiteColor : kChatColor,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onLongPress: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: chat.message),
                              const WidgetSpan(child: const SizedBox(width: 8)),
                              //PlaceHolder
                              WidgetSpan(
                                child: _buildBubbleCaptionText(
                                    context, chat, Colors.transparent),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: _buildBubbleCaptionText(context, chat),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleCaptionText(BuildContext context, MessageModel chat,
      [Color? color]) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          chat.time,
          style: context.style.caption?.copyWith(color: color),
          //textAlign: TextAlign.end,
        ),
        const SizedBox(width: 5),
        Icon(Icons.done_all_rounded, size: 15, color: color),
      ],
    );
  }
}
