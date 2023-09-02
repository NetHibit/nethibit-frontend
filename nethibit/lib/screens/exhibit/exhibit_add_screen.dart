import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class ExhibitAddScreen extends StatefulWidget {
  const ExhibitAddScreen({super.key});

  @override
  State<ExhibitAddScreen> createState() => _ExhibitAddScreenState();
}

class _ExhibitAddScreenState extends State<ExhibitAddScreen> {
  String title = "전시 등록";
  
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