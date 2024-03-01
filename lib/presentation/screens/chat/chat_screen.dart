import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/Widgets/Chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/Widgets/Chat/my_message_buble.dart';
import 'package:yes_no_app/presentation/Widgets/shared/message_fill_box.dart';

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
                "https://e00-mx-marca.uecdn.es/mx/assets/multimedia/imagenes/2023/06/07/16861185825370.jpg"),
          ),
        ),
        title: const Text("Mily ❤️"),
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            //chat box
            const MessageFillBox(),
          ],
        ),
      ),
    );
  }
}
