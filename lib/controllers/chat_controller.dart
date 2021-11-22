import 'package:flutter/cupertino.dart';
import 'package:collection/collection.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';
import 'package:whatsapp_clone/models/chat_model/chat_model.dart';

class ItemSelectController<T> extends ChangeNotifier {
  bool _isAnyItemSelected = false;
  bool get isAnyItemSelected => _isAnyItemSelected;

  final List<T> _selectedItems = [];
  List<T> get selectedItems => _selectedItems;

  void selectItem(T item) {
    bool hasItem = _selectedItems.contains(item);
    if (hasItem) {
      _selectedItems.remove(item);
    } else {
      _selectedItems.add(item);
    }
    _updateIfAnyItemSelected();
    notifyListeners();
  }

  _updateIfAnyItemSelected() {
    if (_selectedItems.length == 1) {
      _isAnyItemSelected = true;
    } else if (_selectedItems.isEmpty) {
      _isAnyItemSelected = false;
    }
  }

  unselectAll() {
    _selectedItems.clear();
    _isAnyItemSelected = false;
    notifyListeners();
  }
}

class MessageController extends ChangeNotifier {
  MessageController() {
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

  //Getters
  TextEditingController get messageFieldController => _messageFieldController;
  FocusNode get messageFieldNode => _messageFieldNode;
  String get text => _messageFieldController.text;
  int get length => _messageFieldController.text.runes.length;
  bool get isEmpty => text.isEmpty;

  set text(String value) {
    _messageFieldController.text = value;
    notifyListeners();
  }

  @override
  void dispose() {
    print("Messages Disposer");
    super.dispose();
  }
}
