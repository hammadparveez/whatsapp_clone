import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/views/app/app_view.dart';

double? _cacheKeyboardHeight;
double? get cacheKeyboardHeight => _cacheKeyboardHeight;

set cacheKeyboardHeight(double? value) =>
    _cacheKeyboardHeight ?? (_cacheKeyboardHeight = value);

void main() {
  runApp(const ProviderScope(child: AppView()));
}
