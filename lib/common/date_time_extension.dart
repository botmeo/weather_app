import 'package:intl/intl.dart';

class DatetimeExtension {
  static String? covertToVietNamese(String? weekday) {
    Map<String, String> weekdayMap = {
      "Monday": "Thứ hai",
      "Tuesday": "Thứ ba",
      "Wednesday": "Thứ tư",
      "Thursday": "Thứ năm",
      "Friday": "Thứ sáu",
      "Saturday": "Thứ bảy",
      "Sunday": "Chủ nhật",
    };
    return weekdayMap[weekday];
  }

  static String? getTime(int? timestamp) {
    if (timestamp == null) {
      return null;
    } else {
      var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      var formatter = DateFormat('h:mm a');
      return formatter.format(date);
    }
  }

  static String? getDate(int? timestamp) {
    if (timestamp == null) {
      return null;
    } else {
      var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      var formatter = DateFormat('EEEE');
      return covertToVietNamese(formatter.format(date));
    }
  }
}
