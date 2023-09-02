import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class WorkListScreen extends StatefulWidget {
  const WorkListScreen({super.key});

  @override
  State<WorkListScreen> createState() => _WorkListScreenState();
}

class _WorkListScreenState extends State<WorkListScreen> {
  String title = "작품 목록";

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
