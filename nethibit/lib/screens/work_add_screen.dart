import 'package:flutter/material.dart';

class WorkAddScreen extends StatefulWidget {
  const WorkAddScreen({super.key});

  @override
  State<WorkAddScreen> createState() => _WorkAddScreenState();
}

class _WorkAddScreenState extends State<WorkAddScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("작품 등록"),
    );
  }
}