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
      height: 30,
      width: kMinInteractiveDimension * 1,
      child: Center(
        child: InkResponse(
          radius: 20,
          child: icon,
          onTap: onTap,
        ),
      ),
    );
  }
}
