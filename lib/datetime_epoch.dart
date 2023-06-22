main() {
  final utcTimeString = DateTime.now()
      .toUtc()
      .add(Duration(hours: DateTime.now().timeZoneOffset.inHours))
      .toString();

  print('String: ${utcTimeString}');

  print(ConvertToEpochTime.dateToEpochTime());
}

class ConvertToEpochTime {
  final utcTimeString = DateTime.now()
      .toUtc()
      .add(Duration(hours: DateTime.now().timeZoneOffset.inHours))
      .toString();
  final double MILLISECOND_TO_HOUR = 1000 * 60 * 60;
  final double MILLISECOND_TO_DAY = 1000 * 60 * 60 * 24;
  final double MILLISECOND_TO_MINUTE = 1000 * 60;

  static dateToEpochTime() {
    final parseDateTime = DateTime.parse(ConvertToEpochTime().utcTimeString);
    final unixTime = parseDateTime.hour / 1000;

    return unixTime;
  }
}
