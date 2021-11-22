import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/config/auto_route.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/pods.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/views/components/custom_icon_button.dart';
import 'package:whatsapp_clone/res/extensions.dart';

class MessageAppBar extends StatelessWidget {
  const MessageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: context.primaryColor),
      titleTextStyle: _appBarTextStyle(context),
      leadingWidth: 70,
      titleSpacing: 0,
      leading: Container(
        margin: const EdgeInsets.all(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () => Navigator.pop(context),
          child: Row(
            children: [
              const Icon(Icons.arrow_back),
              Flexible(child: Assets.images.avatar.image()),
            ],
          ),
        ),
      ),
      title: InkWell(
        onTap: () {
          AutoRouter.of(context).push(const AccountDetailRoute());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hammad Parveez Alex Murphy'),
            Text('online', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
      actions: [
        CustomIconButton(
            icon: const Icon(Icons.videocam_rounded), onTap: () {}),
        CustomIconButton(icon: const Icon(Icons.phone), onTap: () {}),
        CustomIconButton(icon: const Icon(Icons.more_vert), onTap: () {}),
      ],
    );
  }

  TextStyle? _appBarTextStyle(BuildContext context) {
    return context.style.subtitle2?.copyWith(
        height: 1.5,
        color: kWhiteColor,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.normal);
  }
}

class MessageSelectedAppBar extends ConsumerWidget {
  const MessageSelectedAppBar({
    Key? key,
  }) : super(key: key);

  final _overlayColor =
      const SystemUiOverlayStyle(statusBarColor: kDarkPrimaryColor);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(messageItemController);
    final isMoreItemSelected = controller.selectedItems.length > 1;
    return AppBar(
        systemOverlayStyle: _overlayColor,
        backgroundColor: kDarkPrimaryColor,
        title: Text(controller.selectedItems.length.toString()),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => controller.unselectAll()),
        actions: [
          isMoreItemSelected
              ? const SizedBox()
              : CustomIconButton(onTap: () {}, icon: const Icon(Icons.reply)),
          CustomIconButton(onTap: () {}, icon: const Icon(Icons.star)),
          CustomIconButton(onTap: () {}, icon: const Icon(Icons.delete)),
          isMoreItemSelected
              ? CustomIconButton(onTap: () {}, icon: const Icon(Icons.copy))
              : const SizedBox(),
          CustomIconButton(
              onTap: () {}, icon: const Icon(Icons.reply_all_rounded)),
          isMoreItemSelected
              ? const SizedBox()
              : CustomIconButton(
                  onTap: () {}, icon: const Icon(Icons.more_vert_rounded)),
        ]);
  }
}
