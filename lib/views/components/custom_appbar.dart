import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/pods.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.primaryAppbar,
    required this.secondaryAppBar,
  }) : super(key: key);
  final Widget primaryAppbar, secondaryAppBar;

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context, ref) {
    var isSecondary = ref.watch(appbarUpdateController);

    return AnimatedSwitcher(
      child: isSecondary ? secondaryAppBar : primaryAppbar,
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (widget, animation) {
        return FadeTransition(child: widget, opacity: animation);
      },
    );
  }
}
