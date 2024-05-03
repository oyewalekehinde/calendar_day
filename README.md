## calendar_day

The `DemoDivider` widget provides a simple wave divider that you can customize. Here are some usage examples:

1. Using the default divider:

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

Find the example wiring in the [CalendarDay example application](https://github.com/swervendy/tambi-flutter-sdk/blob/main/example/lib/main.dart).

## API details

See the [tambi_sdk.dart](https://github.com/swervendy/tambi-flutter-sdk/blob/feature/websocket_impl/lib/tambi_flutter_sdk.dart) for more API details

## Issues and feedback

Please file [issues](https://github.com/swervendy/tambi-flutter-sdk/issues)
to send feedback or report a bug. Thank you!

### Support the Library

You can support the library by liking it on pub, staring in on Github and reporting any bugs you
encounter.
