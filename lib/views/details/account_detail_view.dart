import 'package:flutter/material.dart';

import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/models/chat_model/chat_model.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';
import 'package:whatsapp_clone/views/tabs/chats/components/chat_list_tile.dart';

class AccountDetailView extends StatefulWidget {
  const AccountDetailView({Key? key}) : super(key: key);

  @override
  State<AccountDetailView> createState() => _AccountDetailViewState();
}

class _AccountDetailViewState extends State<AccountDetailView> {
  int _totalLength = 15;
  int _trimeLength = 15 - 5;
  int _remainingLength = 5;
  final _spacer = SizedBox(height: 8);

  @override
  Widget build(BuildContext context) {
    final _themeData = Theme.of(context).copyWith(
      textTheme: context.style.copyWith(
          bodyText1: TextStyle(fontSize: 16, color: kPureBlack),
          bodyText2: TextStyle(fontSize: 14)),
    );
    return Scaffold(
      backgroundColor: kLightGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              actions: [
                CustomIconButton(icon: Icon(Icons.more_vert)),
              ],
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Assets.images.chatBg.image(
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity),
                    _buildOverlayShadow(context,
                        top: MediaQuery.of(context).padding.top),
                    _buildOverlayShadow(context, bottom: 0),
                  ],
                ),
                title: Text(
                  'Uzair Ahmed',
                ),
              )),
          SliverToBoxAdapter(
            child: DefaultTextStyle(
              style: context.style.caption!,
              child: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                color: kWhiteColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Media, '),
                        Text('Links, '),
                        Text('and docs'),
                        Spacer(),
                        Text('14'),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                    const SizedBox(height: 5),
                    _buildMediaLinksDocs(context),
                  ],
                ),
              ),
            ),
          ),
          Theme(
            data: _themeData,
            child: ListTileTheme(
              tileColor: kWhiteColor,
              iconColor: kPrimaryColor,
              child: SliverList(
                  delegate: SliverChildListDelegate.fixed(
                [
                  SwitchListTile.adaptive(
                    value: true,
                    onChanged: (isSelected) {},
                    title: Text('Mute notifications'),
                  ),
                  _buildDivider(),
                  Column(
                    children: [
                      ListTile(title: Text('Custom notifications')),
                      _buildDivider(),
                      ListTile(title: Text('Media Visiblity')),
                      _buildDivider(),
                      _spacer,
                      ListTile(
                          title: Text('Disappearing messages'),
                          trailing: Icon(Icons.timelapse)),
                      ListTile(
                          title: Text('Encryption'),
                          subtitle: Text(
                            'Messages and calls are end-to-end encrypted. Tap to verify',
                            style: TextStyle(height: 1.4),
                          ),
                          trailing: Icon(Icons.lock)),
                      _spacer,
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('About and phone number',
                                style: context.style.caption),
                            _spacer,
                            Text('Will be on the rising phase',
                                maxLines: 2, overflow: TextOverflow.ellipsis),
                          ],
                        ),
                        subtitle: Text('March 7'),
                      ),
                      ListTile(
                        title: const Text('+923123456789'),
                        subtitle: const Text('Mobile'),
                        trailing: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildNumItem(Icons.message, () {}),
                            _buildNumItem(Icons.phone, () {}),
                            _buildNumItem(Icons.videocam, () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                  _spacer,
                  Container(
                    color: kWhiteColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _ChatDetailCommonText(
                            text: 'Groups in common', total: _totalLength),
                        ListView.builder(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: _trimeLength,
                            itemBuilder: (_, index) {
                              if (index == _trimeLength - 1 &&
                                  _trimeLength != _totalLength) {
                                return ListTile(
                                  leading:
                                      const Icon(Icons.keyboard_arrow_down),
                                  minLeadingWidth: 8,
                                  title: Row(
                                    children: [
                                      Text('${_totalLength - _trimeLength}'),
                                      const SizedBox(width: 10),
                                      const Text("More"),
                                    ],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _trimeLength = _totalLength;
                                    });
                                  },
                                );
                              }
                              return ListTile(
                                  leading: CircleAvatar(
                                      backgroundImage: Assets.images.avatar),
                                  title: Text('Pakistan is Love'));
                            }),
                      ],
                    ),
                  ),
                  _spacer,
                  _buildRedListTile('Block', Icons.block, () {}),
                  _spacer,
                  _buildRedListTile('Report contact', Icons.thumb_down, () {}),
                  _spacer,
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }

  InkWell _buildNumItem(IconData icon, VoidCallback onTap) {
    return InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        onTap: onTap);
  }

  ListTile _buildRedListTile(String text, IconData icon, VoidCallback? onTap) {
    return ListTile(
        tileColor: kWhiteColor,
        title: Text(text),
        leading: Icon(icon, color: kRedColor));
  }

  Container _buildDivider() {
    return Container(
      color: kWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 1,
      child: const Divider(),
    );
  }

  Widget _buildMediaLinksDocs(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
          separatorBuilder: (_, index) {
            return const SizedBox(width: 5);
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, index) {
            return Stack(
              children: [
                SizedBox.square(
                  dimension: 70,
                  child: Assets.images.chatBg.image(fit: BoxFit.cover),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        color: kBlackColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.videocam,
                                size: 15, color: kWhiteColor),
                            Text('0:30',
                                style: context.style.caption
                                    ?.copyWith(color: kWhiteColor)),
                          ],
                        )))
              ],
            );
          }),
    );
  }

  Positioned _buildOverlayShadow(BuildContext context,
      {double? top, double? bottom}) {
    double _dy = bottom != null ? 20 : -20;
    double _dx = bottom != null ? -10 : 10;
    return Positioned(
        top: top,
        bottom: bottom,
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 10,
                  blurRadius: 50,
                  offset: Offset(_dx, _dy),
                  color: kBlackColor.withOpacity(.5))
            ],
          ),
        ));
  }
}

class _ChatDetailCommonText extends StatelessWidget {
  final String text;
  final int total;
  final Widget? trailing;
  const _ChatDetailCommonText({
    Key? key,
    required this.text,
    required this.total,
    this.trailing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.style.caption!,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Row(
          children: [
            Text(text),
            Spacer(),
            Text(total.toString()),
            SizedBox(width: trailing != null ? 5 : 0),
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class SenderAccountDetail {
  var items = [
    'Mute notifications',
    'Custom notifications',
    'Media visiblity',
    'Disappearing messages',
    'Encryption',
    'About and phone number',
  ];
}
