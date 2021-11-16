import 'package:flutter/animation.dart';
import 'package:whatsapp_clone/models/message_model/message_model.dart';

class MockChats {
  var chats = const [
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'Hi How are you?',
        time: '9:29 PM',
        isSent: true),
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'Hi , Im fine, How about you?',
        time: '11:29 AM',
        isSent: false),
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'How was your day, Tell me',
        time: '9:30 PM',
        isSent: false),
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'Nothing special, Everything is fine',
        time: '10:10 AM',
        isSent: true),
    MessageModel(
        userID: '123',
        messageID: '321',
        message:
            'You know there, I\'have seen so many attack around, And It was a huge wildefire',
        time: '10:10 AM',
        isSent: true),
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'Thanks',
        time: '9:30 PM',
        isSent: false),
    MessageModel(
        userID: '123',
        messageID: '321',
        message: 'Nothing special, Everything is fine',
        time: '10:10 AM',
        isSent: false),
  ];
}
