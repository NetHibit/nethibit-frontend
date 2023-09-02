import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  String title = "내 프로필";

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
