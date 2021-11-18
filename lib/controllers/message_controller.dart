import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';

class MessageController extends ChangeNotifier {
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
