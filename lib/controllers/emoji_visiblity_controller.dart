import 'package:flutter/cupertino.dart';

class EmojiVisiblityController extends ChangeNotifier {
  EmojiVisiblityController() {
    _messageFieldController.addListener(() {
      if (length == 1) {
        notifyListeners();
      } else if (text.isEmpty) {
        notifyListeners();
      }
    });
  }

  final TextEditingController _messageFieldController = TextEditingController();
  final FocusNode _messageFieldNode = FocusNode();
  bool _isEmojiVisible = false;
  TextEditingController get messageFieldController => _messageFieldController;

  FocusNode get messageFieldNode => _messageFieldNode;

  bool get isEmojiVisible => _isEmojiVisible;

  String get text => _messageFieldController.text;
  int get length => _messageFieldController.text.runes.length;
  bool get isEmpty => text.isEmpty;

  onFieldTap() => _hideEmojiContainer();

  showEmojis() async {
    if (!_messageFieldNode.hasFocus && !_isEmojiVisible) {
      _isEmojiVisible = true;
      notifyListeners();
    } else if (_messageFieldNode.hasFocus) {
      _messageFieldNode.unfocus();
      Future.delayed(const Duration(milliseconds: 200), () {
        _isEmojiVisible = true;
        notifyListeners();
      });
    } else {
      _isEmojiVisible = false;
      _messageFieldNode.requestFocus();
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

  void reset() {
    _isEmojiVisible = false;
    notifyListeners();
  }
}
