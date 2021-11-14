import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ThemeStyle on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get fixedHeight => max(width, height);
  double get fixedWidth => min(width, height);
  TextTheme get style => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
}
