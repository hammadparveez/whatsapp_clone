import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';
import 'package:whatsapp_clone/res/extensions.dart';

class AccountDetailView extends StatelessWidget {
  const AccountDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              actions: [
                CustomIconButton(icon: Icon(Icons.more_vert)),
              ],
              floating: true,
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                //titlePadding: EdgeInsetsDirectional.only(start: 5, bottom: 10),
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
                        Text('Media'),
                        Text('Links'),
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

          // SliverToBoxAdapter(
          //   child: _buildMediaLinksDocs(context),
          // ),
          SliverList(
              delegate: SliverChildListDelegate.fixed(
            [
              SwitchListTile.adaptive(
                value: true,
                tileColor: kWhiteColor,
                onChanged: (_) {},
                title: Text('Mute notifications'),
              ),
              _buildDivider(),
              ListTileTheme(
                tileColor: kWhiteColor,
                child: Column(
                  children: [
                    ListTile(title: Text('Custom notifications')),
                    _buildDivider(),
                    ListTile(title: Text('Media Visiblity')),
                    _buildDivider(),
                    const SizedBox(height: 8),
                    ListTile(
                        title: Text('Disappearing messages'),
                        trailing: Icon(Icons.timelapse)),
                    ListTile(
                        title: Text('Encryption'),
                        subtitle: Text(
                            'Messages and calls are end-to-end encrypted. Tap to verify'),
                        trailing: Icon(Icons.lock)),
                    const SizedBox(height: 8),
                    ListTile(
                        title: Text('Block'),
                        leading: Icon(Icons.block, color: kRedColor)),
                    const SizedBox(height: 8),
                    ListTile(
                        title: Text('Report contact'),
                        leading: Icon(Icons.thumb_down, color: kRedColor)),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      color: kWhiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 1,
      child: const Divider(),
    );
  }

  Container _buildMediaLinksDocs(BuildContext context) {
    return Container(
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
