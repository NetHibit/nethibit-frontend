import 'package:flutter/material.dart';
import 'package:nethibit/widgets/footer/footer.dart';
import 'package:nethibit/widgets/header/header.dart';
import 'package:table_calendar/table_calendar.dart';

class ExhibitAddScreen extends StatefulWidget {
  const ExhibitAddScreen({super.key});

  @override
  State<ExhibitAddScreen> createState() => _ExhibitAddScreenState();
}

class _ExhibitAddScreenState extends State<ExhibitAddScreen> {
  String title = "전시 등록";
  final List<String> rowName = [
    "제목",
    "카테고리",
    "전시 기간",
    "대표 이미지",
    "한 줄 설명",
    "상세 설명"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        appBar: AppBar(),
        title: title,
      ),
      body: ListView.separated(
        itemCount: rowName.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Text(
                  rowName[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  child: CalendarWidget(),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 15,
          indent: BorderSide.strokeAlignOutside,
        ),
      ),
      bottomNavigationBar: Footer(
        title: title,
      ),
    );
  }
}

// 전시 기간 캘린더 위젯
class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime userFocusedDay = DateTime.now();
  DateTime? userSelectedDay;
  DateTime? rangeStart;
  DateTime? rangeEnd;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: "ko_KR",
      focusedDay: userFocusedDay,
      firstDay: DateTime(2023, 9, 1),
      lastDay: DateTime(2024, 9, 31),
      selectedDayPredicate: (day) => isSameDay(userSelectedDay, day),
      rangeStartDay: rangeStart,
      rangeEndDay: rangeEnd,
      rangeSelectionMode: rangeSelectionMode,
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(userSelectedDay, selectedDay)) {
          setState(() {
            userSelectedDay = selectedDay;
            userFocusedDay = focusedDay;
            rangeStart = null;
            rangeEnd = null;
            rangeSelectionMode = RangeSelectionMode.toggledOff;
          });
        }
      },
      onRangeSelected: (start, end, focusedDay) {
        setState(() {
          userSelectedDay = null;
          userFocusedDay = focusedDay;
          rangeStart = start;
          rangeEnd = end;
          rangeSelectionMode = RangeSelectionMode.toggledOn;
        });
      },
      onPageChanged: (focusedDay) {
        userFocusedDay = focusedDay;
      },
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        leftChevronIcon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Theme.of(context).cardColor,
        ),
        rightChevronIcon: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).cardColor,
        ),
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        markersMaxCount: 2,
        todayDecoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          shape: BoxShape.circle,
        ),
        weekendTextStyle: const TextStyle().copyWith(color: Colors.red),
        holidayTextStyle: const TextStyle().copyWith(color: Colors.blue[800]),
      ),
    );
  }
}
