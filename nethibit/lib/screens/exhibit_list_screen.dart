import 'package:flutter/material.dart';

class ExhibitListScreen extends StatefulWidget {
  const ExhibitListScreen({super.key});

  @override
  State<ExhibitListScreen> createState() => _ExhibitListScreenState();
}

class _ExhibitListScreenState extends State<ExhibitListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("전시 목록"),
    );
  }
}
