import 'package:flutter/material.dart';
import 'package:calendar_day/calendar_day.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calendar Day'),
        ),
        body: Center(
          child: CalendarDayWidget(
            startDate: DateTime(2024, 5, 1),
            endDate: DateTime(2024, 5, 7),
            leftIcon: const Icon(
              Icons.arrow_left,
              size: 30,
            ),
            rightIcon: const Icon(
              Icons.arrow_right,
              size: 30,
            ),
            dateFormat: DateFormat("EEEE, MMMM dd"),
            onDateSelected: (value) {
              debugPrint(value.toString());
            },
          ),
        ),
      ),
    );
  }
}
