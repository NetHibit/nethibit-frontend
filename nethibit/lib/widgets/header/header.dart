import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const Header({
    super.key,
    required this.appBar,
    required this.title,
  });

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      foregroundColor: Theme.of(context).cardColor,
      backgroundColor: Colors.white,
      elevation: 1,
      actions: [
        (title == "전시 목록" || title == "작품 목록")
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              )
            : (title == "전시 등록" || title == "작품 등록" || title == "프로필 편집")
                ? TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF0F52BA),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text("완료"))
                : (title == "채팅" || title == "작가 프로필")
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                        ),
                      )
                    : const SizedBox()
      ],
    );
  }
}
