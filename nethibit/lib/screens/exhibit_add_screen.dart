import 'package:flutter/material.dart';

class ExhibitAddScreen extends StatefulWidget {
  const ExhibitAddScreen({super.key});

  @override
  State<ExhibitAddScreen> createState() => _ExhibitAddScreenState();
}

class _ExhibitAddScreenState extends State<ExhibitAddScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("전시 등록"),
    );
  }
}
