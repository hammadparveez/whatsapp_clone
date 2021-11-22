import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';
import 'package:whatsapp_clone/models/chat_model/chat_model.dart';

class UserChatController extends ChangeNotifier {
  bool _isAnyItemSelected = false;

  final List<ChatModel> _selectedItems = [];

  bool get isAnyItemSelected => _isAnyItemSelected;
  List<ChatModel> get selectedItems => _selectedItems;

  void selectItem(ChatModel chat) {
    
    if (selectedItems.contains(chat)) {
       _isAnyItemSelected = true;
      unSelectItem(chat);
    } else {
      selectedItems.add(chat);
      notifyListeners();
    }
  
  }

  void unSelectItem(ChatModel chat) {
    selectedItems.remove(chat);
    notifyListeners();
  }

  void updateItemSelected() {
    _isAnyItemSelected = true;
    notifyListeners();
  }

  void resetItemSelected() {
    _isAnyItemSelected = false;
    notifyListeners();
  }
}

class ChatController extends ChangeNotifier {
  bool _isAnyItemSelected = false;

  final List<MessageModel> _selectedItems = [];

  bool get isAnyItemSelected => _isAnyItemSelected;
  List<MessageModel> get selectedItems => _selectedItems;

  void selectItem(MessageModel chat) {
    selectedItems.add(chat);
    notifyListeners();
  }

  void unSelectItem(MessageModel chat) {
    selectedItems.remove(chat);
    notifyListeners();
  }

  void updateItemSelected() {
    _isAnyItemSelected = true;
    notifyListeners();
  }

  void resetItemSelected() {
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
