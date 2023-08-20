import 'package:flutter/material.dart';
import 'package:yes_no/presentacion/widgets/chat/her_message_bubble.dart';
import 'package:yes_no/presentacion/widgets/shared/message_field_box.dart';

import '../widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images4.alphacoders.com/130/1304411.jpeg'),
            )),
        title: const Text('Mi amor ♥️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            // Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
