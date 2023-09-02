import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';

class ArtistProfileScreen extends StatefulWidget {
  const ArtistProfileScreen({super.key});

  @override
  State<ArtistProfileScreen> createState() => _ArtistProfileScreenState();
}

class _ArtistProfileScreenState extends State<ArtistProfileScreen> {
  String title = "작가 프로필";
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
