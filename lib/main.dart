
import 'package:flutter/material.dart';
import 'package:flutter_ui/chat_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        home: ChatPage());
  }
}

