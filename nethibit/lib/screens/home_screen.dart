import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("NetHibit"),
      ),
      body: const Scaffold(),
      bottomNavigationBar: const Footer(),
    );
  }
}
