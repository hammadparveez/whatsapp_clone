import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/without_glow_scroll_configuraiton.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';

class MessageTypeContainer extends StatefulWidget {
  const MessageTypeContainer({Key? key}) : super(key: key);

  @override
  State<MessageTypeContainer> createState() => _MessageTypeContainerState();
}

class _MessageTypeContainerState extends State<MessageTypeContainer> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    _controller.addListener(() {
      if (_controller.text.length == 1) {
        setState(() {});
      } else if (_controller.text.isEmpty) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
      color: kCreamColor,
      constraints:
          BoxConstraints(maxHeight: (context.height - kToolbarHeight) / 2.5),
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: _buildMessageIcon(
                            Icons.emoji_emotions_outlined, () {})),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        spacer(),
                        Expanded(
                          child: ScrollConfiguration(
                            behavior: NoGlowScrollBehavior(),
                            child: Scrollbar(
                              child: TextField(
                                controller: _controller,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  isCollapsed: true,
                                  isDense: true,
                                  hintText: 'Message',
                                  border: InputBorder.none,
                                ),
                                maxLines: null,
                              ),
                            ),
                          ),
                        ),
                        //Row of Camera and Attachfile IconButton
                        spacer(),
                      ],
                    ),
                    endedButtons(),
                  ],
                ),
              ),
            ),
            const SizedBox(
                width: kMinInteractiveDimension + 8,
                height: kMinInteractiveDimension * .9),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Material(
            color: context.primaryColor,
            shape: const CircleBorder(),
            clipBehavior: Clip.hardEdge,
            child: IconButton(
              color: kWhiteColor,
              constraints: const BoxConstraints(
                  minHeight: kMinInteractiveDimension * .8),
              icon: _swtichingMicIcon(),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }

  AnimatedSwitcher _swtichingMicIcon() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _controller.text.isNotEmpty
          ? const Icon(Icons.send, key: ValueKey('send_icon'))
          : const Icon(Icons.mic, key: ValueKey('mic_icon')),
      transitionBuilder: (widget, animation) =>
          ScaleTransition(scale: animation, child: widget),
    );
  }

  SizedBox spacer() {
    return const SizedBox(
      width: kMinInteractiveDimension * .8,
    );
  }

  Widget endedButtons() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      bottom: 0,
      right: _controller.text.isEmpty ? 0 : -kMinInteractiveDimension * .7,
      child: Row(
        children: [
          _buildMessageIcon(Icons.attach_file, () {}),
          _buildMessageIcon(Icons.camera_alt, () {}),
        ],
      ),
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
