## calendar_day

The `CalendarDayWidget` widget provides a simple wave divider that you can customize. Here are some usage examples:

1. Using the default widget:

```dart

CalendarDayWidget()

```

or a little bit of custom with:

```dart
   CalendarDayWidget(
            startDate: DateTime(2024, 5, 1),
            endDate: DateTime(2024, 5, 7),
            leftIcon: Icon(
              Icons.arrow_left,
              size: 30,
            ),
            rightIcon: Icon(
              Icons.arrow_right,
              size: 30,
            ),
            textStyle: TextStyle(),
            dateFormat: DateFormat("EEEE, MMMM dd"),
            onDateSelected: (value) {},
          )
```

## Example

Find the example wiring in the [CalendarDay example application](https://github.com/oyewalekehinde/calendar_day/blob/main/example/lib/main.dart).


## Issues and feedback

Please file [issues](https://github.com/oyewalekehinde/calendar_day/issues)
to send feedback or report a bug. Thank you!

