import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/config/routes.dart';
import 'package:whatsapp_clone/views/app/app_view.dart';

class EmojiVisiblityController extends StateNotifier<bool> {
  EmojiVisiblityController(this._node) : super(false);

  final FocusNode _node;

  onFieldTap() => _hideEmojiContainer();

  showEmojis() async {
    if (!_node.hasFocus && !state) {
      state = true;
    } else if (_node.hasFocus) {
      _node.unfocus();

      Future.delayed(const Duration(milliseconds: 200), () {
        state = true;
      });
    } else {
      state = false;
      FocusScope.of(appRouter.navigatorKey.currentContext!).requestFocus(_node);
      //_node.requestFocus();
    }
  }

  Future<bool> onBackPress() async {
    return !_hideEmojiContainer() ? true : false;
  }

  bool _hideEmojiContainer() {
    if (state) {
      state = false;

      return true;
    }
    return false;
  }

  void reset() {
    if (state) {
      state = false;
    }
  }

  @override
  void dispose() {
    print("Emojii Disposer");
    super.dispose();
  }
}
