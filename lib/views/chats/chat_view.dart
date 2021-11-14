import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (_, __) {
        return Row(
          children: [
            CircleAvatar(
              child: FlutterLogo(),
            )
          ],
        );
      },
    );
  }
}
