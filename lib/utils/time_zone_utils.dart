import 'package:timezone/timezone.dart';
import 'package:flutter/material.dart';


Duration getTimeDifference(String timeZone) {
  // Assuming Kathmandu, Nepal is in the NT time zone
  final kathmandu = getLocation('Asia/Kathmandu');
  final kathmanduTzInfo = kathmandu.currentTimeZone;

  // Parse the time zone string (e.g., "+3 HRS | EST") to get the offset
  final offset = Duration(hours: int.parse(timeZone.split(' ')[0]));

  // Calculate the time difference based on the offset
  return offset - Duration(seconds: kathmanduTzInfo.offset);
}

TimeOfDay getCurrentTimeForTimeZone(String timeZone) {
  final now = DateTime.now();
  final timeDifference = getTimeDifference(timeZone);
  final adjustedTime = now.add(timeDifference);
  return TimeOfDay.fromDateTime(adjustedTime);
}

extension TimeOfDayExtension on TimeOfDay {
  String format(BuildContext context) {
    final hour = this.hour > 12 ? this.hour - 12 : this.hour;
    final minute = this.minute.toString().padLeft(2, '0');
    final formattedHour = hour.toString().padLeft(2, '0');
    return '$formattedHour:$minute';
  }
}