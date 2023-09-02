import 'package:flutter/material.dart';
import 'package:nethibit/widgets/header/header.dart';
import 'package:nethibit/widgets/footer/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
        title: "메인",
      ),
      body: const Scaffold(),
      bottomNavigationBar: const Footer(),
    );
  }
}
