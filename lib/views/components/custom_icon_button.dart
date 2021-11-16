import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;
  final double splashSize;
  final double factorWidth;
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.splashSize = 20,
    this.factorWidth = .8,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: kMinInteractiveDimension * factorWidth,
      child: Center(
        child: InkResponse(
          radius: splashSize,
          child: icon,
          onTap: onTap,
        ),
      ),
    );
  }
}
