import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/models/status_model/status_model.dart';

import 'package:whatsapp_clone/res/extensions.dart';
import 'package:whatsapp_clone/views/components/custom_tile.dart';

import 'package:whatsapp_clone/views/status/mock_list.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  Widget _myStatusWidget(BuildContext context) {
    return StatusTile(
      statusModel: myStatusModel,
      trailing: IconButton(
        color: context.secondaryColor,
        icon: const Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _myStatusWidget(context)),
        const SliverToBoxAdapter(
            child: const StatusUpdatesText(title: 'Recent Updates')),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (_, index) {
            final user = mockStatus[index];
            return StatusTile(
              statusModel: user,
              onTap: () {},
            );
          },
          childCount: mockStatus.length,
        )),
        const SliverToBoxAdapter(
            child: const StatusUpdatesText(title: 'Seen Status')),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (_, index) {
            final user = mockStatus[index];
            return StatusTile(
              statusModel: user,
              onTap: () {},
            );
          },
          childCount: mockStatus.length,
        )),
      ],
    );
  }
}

class StatusUpdatesText extends StatelessWidget {
  const StatusUpdatesText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: double.infinity,
      color: const Color(0xFFE4E4E4),
      child: Text(title,
          style: context.style.bodyText2?.copyWith(
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4,
              color: context.style.caption!.color)),
    );
  }
}

class StatusTile extends CustomTile<StatusModel> {
  const StatusTile({
    Key? key,
    required StatusModel statusModel,
    this.trailing,
    VoidCallback? onTap,
    VoidCallback? onLongTap,
  }) : super(key: key, model: statusModel, onTap: onTap, onLongTap: onLongTap);
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      onLongPress: onLongTap,
      leading: LayoutBuilder(builder: (context, constraints) {
        var diameter = constraints.maxHeight;
        var defaultSpace = 4.0;
        return DottedBorder(
            borderType: BorderType.Circle,
            dashPattern: [
              (pi * diameter) / model.totalStatusCount - defaultSpace,
              defaultSpace,
            ],
            strokeWidth: 2.5,
            color: context.secondaryColor,
            padding: EdgeInsets.all(4),
            child: Assets.images.avatar.image());
      }),
      title: Text(model.postedBy),
      subtitle: Text(model.time),
      trailing: trailing,
    );
  }
}
