
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class MainView extends ConsumerWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child:const  Icon(Icons.add),
          ),
    );
  }
}
