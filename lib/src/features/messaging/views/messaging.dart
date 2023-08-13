import 'package:flutter/material.dart';
import 'package:telehealth/core/utils/colors.dart';

import '../../health_related/widgets/my_nav_bar.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TheColors.white,
      body: ListView(
        children: [
          SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 60,
              child: Column(
                children: [
                  const MyNavbar(
                      navLabel: "Chat", imageSource: "assets/images/chat.jpg"),
                  Expanded(
                    child: ListView.builder(
                      itemCount: chatMessages.length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        final message = chatMessages[index];
                        return ChatMessage(
                          message: message,
                          isMe: index % 2 ==
                              0, // Alternate sender for demonstration
                        );
                      },
                    ),
                  ),
                  const Divider(height: 1),
                  _buildMessageInputField(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInputField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Type a message'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // TODO: Implement sending messages
            },
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isMe;

  const ChatMessage({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.greenAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message,
          style: const TextStyle(fontFamily: "CenturyGothic"),
        ),
      ),
    );
  }
}

List<String> chatMessages = [
  'Sure thing!',
  'It has really improved my health',
  'Yes, i have',
  'have you been taking the medication',
  'I\'m doing great!',
  'How are you?',
  'Hi there!',
  'Hello!',
];
