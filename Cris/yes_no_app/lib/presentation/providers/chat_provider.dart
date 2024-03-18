import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: "Hola amor", fromWho: FromWho.mine),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.mine);

    messageList.add(newMessage);

    if (text.endsWith("?")) {
      herReply();
    }

    notifyListeners(); //Notificacion para refrescar la pantalla
    moveScrollToBottom(); //Movimiento del scroll al enviar el mensaje
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners(); //Notificacion para refrescar la pantalla
    moveScrollToBottom(); //Movimiento del scroll al enviar el mensaje
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
