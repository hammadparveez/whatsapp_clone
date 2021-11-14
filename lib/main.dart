import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/views/app/app_view.dart';

void main() {
  runApp(const ProviderScope(child: AppView()));
}
