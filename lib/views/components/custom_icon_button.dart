import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: kMinInteractiveDimension * .8,
      child: InkResponse(
        radius: 20,
        child: icon,
        onTap: onTap,
      ),
    );
  }
}
