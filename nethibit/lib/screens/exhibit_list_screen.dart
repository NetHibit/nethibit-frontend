import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class ExhibitListScreen extends StatefulWidget {
  const ExhibitListScreen({super.key});

  @override
  State<ExhibitListScreen> createState() => _ExhibitListScreenState();
}

class _ExhibitListScreenState extends State<ExhibitListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
        title: "작가 목록",
      ),
      body: const Scaffold(),
      bottomNavigationBar: const Footer(),
    );
  }
}
