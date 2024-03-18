import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_buddle.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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"),
          ),
        ),
        title: const Text("Mi amor ❤"),
        centerTitle: false,
      ),
      body: _ChatView(), //Es como un div
    ); //Scaffold es un widget con menu, etc.
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      //Deja un espacio donde van los botones táctiles del telefono
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(message: message)
                      : MyMessageBubble(message: message);
                },
              ),
            ), //Solo se construyen los elementos que se ven en la pantalla

            //Caja de texto
            MessageFieldBox(
                //onValue: (value) => chatProvider.sendMessage(value)),
                onValue: chatProvider
                    .sendMessage), //Funciona igual que la linea de arriba
          ],
        ),
      ),
    );
  }
}
