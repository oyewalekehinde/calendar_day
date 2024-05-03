import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarDayWidget extends StatefulWidget {
  final Function(DateTime) onDateSelected;
  final Widget leftIcon;
  final Widget rightIcon;
  final TextStyle textStyle;
  final DateFormat dateFormat;
  final DateTime startDate;
  final DateTime endDate;
  const CalendarDayWidget(
      {super.key,
      required this.onDateSelected,
      required this.leftIcon,
      required this.rightIcon,
      required this.dateFormat,
      required this.textStyle,
      required this.startDate,
      required this.endDate});

  @override
  State<CalendarDayWidget> createState() => _CalendarDayWidgetState();
}

class _CalendarDayWidgetState extends State<CalendarDayWidget> {
  List<DateTime> dates = [];
  @override
  void initState() {
    dates = getDatesBetween(widget.startDate, widget.endDate);
    super.initState();
  }

  List<DateTime> getDatesBetween(DateTime startDate, DateTime endDate) {
    List<DateTime> dates = [];
    DateTime currentDate = startDate;
    while (currentDate.isBefore(endDate) ||
        currentDate.isAtSameMomentAs(endDate)) {
      dates.add(currentDate);
      currentDate = currentDate.add(const Duration(days: 1));
    }
    return dates;
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (currentIndex > 0) {
                setState(() {
                  currentIndex--;
                });
                widget.onDateSelected(dates[currentIndex]);
              }
            },
            child: widget.leftIcon,
          ),
          Text(
            widget.dateFormat.format(dates[currentIndex]),
            style: widget.textStyle,
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex < dates.length - 1) {
                setState(() {
                  currentIndex++;
                });
                widget.onDateSelected(dates[currentIndex]);
              }
            },
            child: widget.rightIcon,
          )
        ],
      ),
    );
  }
}
