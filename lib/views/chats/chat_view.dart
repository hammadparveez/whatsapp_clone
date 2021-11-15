import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/chats/mock_models.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: mockList.length,
        itemBuilder: (_, index) {
          final user = mockList[index];
          return ListTile(
            onTap: () {},
      
            leading: CircleAvatar(
              child: Image.asset(user.profileImage),
            ),
            title: Text(
              user.senderName,
              maxLines: 1,
            ),
            subtitle: Text(
              user.senderName + ': ' + user.msg,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(user.time,
                      style: context.style.subtitle1
                          ?.copyWith(color: kLightDarkGrey, fontSize: 12)),
                  user.isRead
                      ? Container(
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
                                  color: kWhiteColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          );
          // return Row(
          //   children: [
          //     CircleAvatar(
          //       child: Image.asset('assets/images/avatar.png'),
          //     ),
          //     Column(
          //       children: [
          //         Text("Mason Brian"),

          //       ],
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}
