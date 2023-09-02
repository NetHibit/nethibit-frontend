import 'package:flutter/material.dart';
import 'package:nethibit/screens/chat_screen.dart';
import 'package:nethibit/screens/exhibit_add_screen.dart';
import 'package:nethibit/screens/exhibit_list_screen.dart';
import 'package:nethibit/screens/home_screen.dart';
import 'package:nethibit/screens/my_profile_screen.dart';
import 'package:nethibit/screens/work_add_screen.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int selectedIndex = 0;

  // 하단바 아이콘 클릭 함수
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    // 하단바 아이콘 클릭 시 페이지 이동
    if (selectedIndex == 0) {
      // 첫 번째 아이콘을 클릭한 경우
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    } else if (selectedIndex == 1) {
      // 두 번째 아이콘을 클릭한 경우
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ExhibitListScreen(),
      ));
    } else if (selectedIndex == 2) {
      // 세 번째 아이콘을 클릭한 경우
      showDialog(
        context: context,
        barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text(
              "전시를 등록하고 싶으신가요? \n아니면 작품을 등록하고 싶으신가요?",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            backgroundColor: Colors.white,
            actions: [
              // 전시 등록 화면 희망
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF0F52BA),
                  foregroundColor: Colors.white,
                ),
                child: const Text("전시 등록"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ExhibitAddScreen(),
                  ));
                },
              ),
              const SizedBox(
                width: 10,
              ),
              // 작품 등록 화면 희망
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF0F52BA),
                  foregroundColor: Colors.white,
                ),
                child: const Text("작품 등록"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WorkAddScreen(),
                  ));
                },
              ),
            ],
          );
        },
      );
    } else if (selectedIndex == 3) {
      // 네 번째 아이콘을 클릭한 경우
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      ));
    } else if (selectedIndex == 4) {
      // 다섯 번째 아이콘을 클릭한 경우
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyProfileScreen(),
      ));
    }
  }

  // 하단바 아이콘 색상 설정 함수
  Color getIconColor(int index) {
    return selectedIndex == index ? const Color(0xFF0F52BA) : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              onItemTapped(0);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Icon(
                Icons.home,
                color: getIconColor(0),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onItemTapped(1);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Icon(
                Icons.dashboard,
                color: getIconColor(1),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onItemTapped(2);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Icon(
                Icons.add_circle,
                color: getIconColor(2),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onItemTapped(3);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Icon(
                Icons.mode_comment,
                color: getIconColor(3),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onItemTapped(4);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Icon(
                Icons.person,
                color: getIconColor(4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
