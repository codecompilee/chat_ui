import 'package:flutter/material.dart';
import 'package:flutter_ui/models/chat_model.dart';
import 'package:flutter_ui/utils.dart';
import 'package:flutter_ui/widgets/message_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: peachColor,
      bottomNavigationBar: _chatTextField(),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: greyColor,
                  radius: 26,
                  backgroundImage:
                      const AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alex Smith",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    MessageBubble(message: messages[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                itemCount: messages.length),
          ))
        ],
      ),
    );
  }

  Widget _chatTextField() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 14,
          bottom: MediaQuery.of(context).viewInsets.bottom + 30),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: greyColor),
        child: Row(
          children: [
            const Expanded(
                child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Your Message",
                  hintStyle: TextStyle(fontSize: 18)),
            )),
            CircleAvatar(
              backgroundColor: peachColor,
              child: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
