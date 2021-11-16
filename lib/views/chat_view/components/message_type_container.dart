import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

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
