// 카테고리 위젯
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  String selectedValue = "";
  List<String> category = [
    "동양화",
    "서양화",
    "판화",
    "드로잉",
    "조각",
    "공예",
    "풍경사진",
    "인물사진",
    "일반사진",
    "서예",
    "뉴미디어",
    "3D",
    "기타",
  ];

  void onCategoryTapped(String value) {
    setState(() {
      selectedValue = value;
    });
    print("선택된 텍스트: $selectedValue");
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: category.map((String value) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 3,
          ),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                selectedValue != value
                    ? Colors.white
                    : Theme.of(context).cardColor,
              ),
              side: MaterialStateProperty.all(
                BorderSide(
                  color: selectedValue != value
                      ? Theme.of(context).cardColor
                      : Colors.white, // border 색상
                  width: 1.5, // border 너비
                ),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // border-radius
                ),
              ),
            ),
            onPressed: () => onCategoryTapped(value),
            child: Text(
              value,
              style: TextStyle(
                  color: selectedValue != value
                      ? Theme.of(context).cardColor
                      : Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        );
      }).toList(),
    );
  }
}
