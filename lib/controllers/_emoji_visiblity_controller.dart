import 'package:flutter/cupertino.dart';

class EmojiVisiblityController extends ChangeNotifier {
  final TextEditingController _messageFieldController = TextEditingController();
  final FocusNode _messageFieldNode = FocusNode();
  bool _isEmojiVisible = false;
  TextEditingController get messageFieldController => _messageFieldController;

  FocusNode get messageFieldNode => _messageFieldNode;

  bool get isEmojiVisible => _isEmojiVisible;

  onFieldTap() => _hideEmojiContainer();

  showEmojis() async {
    if (_messageFieldNode.hasFocus) {
      _messageFieldNode.unfocus();
      await Future.delayed(const Duration(milliseconds: 300));
      _isEmojiVisible = true;
      notifyListeners();
    } else if (!_isEmojiVisible) {
      _isEmojiVisible = true;
      notifyListeners();
    }
  }

  Future<bool> onBackPress() async {
    return !_hideEmojiContainer() ? true : false;
  }

  bool _hideEmojiContainer() {
    if (_isEmojiVisible) {
      _isEmojiVisible = false;
      notifyListeners();
      return true;
    }
    return false;
  }
}
