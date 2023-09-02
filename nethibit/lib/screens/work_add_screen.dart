import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class WorkAddScreen extends StatefulWidget {
  const WorkAddScreen({super.key});

  @override
  State<WorkAddScreen> createState() => _WorkAddScreenState();
}

class _WorkAddScreenState extends State<WorkAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
        title: "작품 등록",
      ),
      body: const Scaffold(),
      bottomNavigationBar: const Footer(),
    );
  }
}