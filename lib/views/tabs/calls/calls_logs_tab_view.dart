import 'package:flutter/material.dart';

import 'package:whatsapp_clone/gen/assets.gen.dart';

import 'package:whatsapp_clone/models/calls_model/calls_model.dart';
import 'package:whatsapp_clone/res/colors.dart';

import 'package:whatsapp_clone/views/components/custom_icon_button.dart';
import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_tile.dart';

final _mockCalls = [
  CallModel(
    name: 'Mason Murphy',
    profileImage: Assets.images.avatar.path,
    time: 'Today, 11:38',
    isMissed: true,
    isVideo: true,
  ),
  CallModel(
    name: 'Alex Bhatti',
    profileImage: Assets.images.avatar.path,
    time: '4 mintues ago',
    isMissed: false,
    isVideo: true,
  ),
  CallModel(
    name: 'Ubaid Khan',
    profileImage: Assets.images.avatar.path,
    time: '1 hour ago',
    isVideo: true,
  ),
  CallModel(
    name: 'Shahzaib Rao',
    profileImage: Assets.images.avatar.path,
    time: 'Yesterday, 21:00',
  ),
];

class CallsTabView extends StatelessWidget {
  const CallsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.phone)),
      body: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (_, index) {
              final user = _mockCalls[index];
              return _CallsViewTile(model: user);
            },
            childCount: _mockCalls.length,
          )),
        ],
      ),
    );
  }
}

class _CallsViewTile extends CustomTile<CallModel> {
  const _CallsViewTile({
    Key? key,
    required CallModel model,
  }) : super(key: key, model: model);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Assets.images.avatar.image(),
      ),
      title: Text(model.name),
      subtitle: Row(
        children: [
          model.isMissed == null
              ? _buildIcon(context, Icons.call_missed_outgoing)
              : model.isMissed!
                  ? _buildIcon(context, Icons.call_missed, color: kRedColor)
                  : _buildIcon(context, Icons.call_received),
          const SizedBox(width: 8),
          Text(model.time),
        ],
      ),
      trailing: CustomIconButton(
        icon: model.isVideo
            ? _buildIcon(context, Icons.videocam_rounded, size: 30)
            : _buildIcon(context, Icons.phone, size: 24),
        onTap: () {},
      ),
    );
  }

  Icon _buildIcon(BuildContext context, IconData icon,
          {double size = 20, Color? color}) =>
      Icon(icon, color: color ?? context.primaryColor, size: size);
}
