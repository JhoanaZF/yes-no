import 'package:flutter/material.dart';

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
        title: const Text('Mi amor '),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Text('mundo')
      ],
    );
  }
}
