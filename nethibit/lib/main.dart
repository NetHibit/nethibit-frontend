import 'package:flutter/material.dart';
import 'package:nethibit/screens/home_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  initializeDateFormatting();
  runApp(const NetHibit());
}

class NetHibit extends StatelessWidget {
  const NetHibit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetHibit',
      theme: ThemeData(
        cardColor: const Color(0xFF0F52BA),
      ),
      home: const HomeScreen(),
    );
  }
}
