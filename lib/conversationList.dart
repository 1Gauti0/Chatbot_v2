import 'package:flutter/cupertino.dart';

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});

}
List<ChatMessage> messages = [
  ChatMessage(messageContent: "Calculate", messageType: "sender"),
  ChatMessage(messageContent: "Answer:", messageType: "receiver"),
  ChatMessage(messageContent: "Open Map", messageType: "sender"),
  ChatMessage(messageContent: "Opening Maps...", messageType: "receiver"),
  ChatMessage(messageContent: "Create Alert!", messageType: "sender"),
  ChatMessage(messageContent: "Alerting", messageType: "receiver"),
];
