import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String title = "채팅";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
        title: title,
      ),
      body: const Scaffold(),
      bottomNavigationBar: Footer(
        title: title,
      ),
    );
  }
}
