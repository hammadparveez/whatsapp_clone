import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/controllers/chat_controller.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';

class ChatBubbleWidget extends ConsumerWidget {
  const ChatBubbleWidget({
    Key? key,
    required this.chat,
    required this.index,
  }) : super(key: key);
  final MessageModel chat;
  final int index;

  _selectItem(WidgetRef ref) {
    var controller = ref.read(messageItemController);
    controller.selectItem(chat);
  }

  _eventListener(WidgetRef ref) {
    ref.listen(messageItemController,
        (ItemSelectController? previous, ItemSelectController next) {
      var _appbarUpdateController = ref.read(appbarUpdateController.notifier);

      if (next.isAnyItemSelected) {
        _appbarUpdateController.showOrHideSecondaryAppBar(true);
      } else {
        _appbarUpdateController.showOrHideSecondaryAppBar(false);
      }
    });
  }

  @override
  Widget build(BuildContext context, ref) {
    _eventListener(ref);
    var controller = ref.watch(messageItemController);
    return GestureDetector(
     
      behavior: HitTestBehavior.translucent,
      onTap: () => _selectItem(ref),
      onLongPress: () => _selectItem(ref),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
        foregroundDecoration: controller.selectedItems.contains(chat)
            ? const BoxDecoration(color: kBlueColor)
            : null,
        child: Container(
          alignment:
              !chat.isSent ? Alignment.centerLeft : Alignment.centerRight,
          constraints: BoxConstraints(
              maxWidth: context.width * .85, minWidth: context.width * .4),
          child: Bubble(
            margin: const BubbleEdges.symmetric(horizontal: 8),
            nip: !chat.isSent ? BubbleNip.leftTop : BubbleNip.rightTop,
            color: !chat.isSent ? kWhiteColor : kChatColor,
            child: Stack(
              children: [
                _buildMessage(context),
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
    );
  }

  Text _buildMessage(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: chat.message),
          const WidgetSpan(child: SizedBox(width: 8)),
          //PlaceHolder
          WidgetSpan(
            child: Opacity(
                opacity: 0, child: _buildBubbleCaptionText(context, chat)),
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
        Text(chat.time, style: context.style.caption?.copyWith(color: color)),
        const SizedBox(width: 5),
        const Icon(Icons.done_all_rounded, size: 15),
      ],
    );
  }
}
