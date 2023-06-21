main() {
  final now = DateTime.now();
  print(now);
  print(now.add(const Duration(days: 3)));
  print(now.isUtc);
  final utcTime =
      now.toUtc().add(Duration(hours: now.timeZoneOffset.inHours)).toString();
  print(now.timeZoneName);
  print(now.timeZoneOffset);
  print(utcTime);
  // Date parsing by String
  final moonLanding = DateTime.parse(utcTime);
  print(moonLanding.hour);
}
