import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/common/date_time_extension.dart';

void main() {
  group('covertToVietNamese', () {
    test('test_covertToVietNamese_translation', () {
      String weekday = "Monday";
      String? result = DatetimeExtension.covertToVietNamese(weekday);
      expect(result, equals("Thứ hai"));
    });
    test('test_covertToVietNamese_null', () {
      String? weekday;
      String? result = DatetimeExtension.covertToVietNamese(weekday);
      expect(result, isNull);
    });
  });

  group('getTime', () {
    test('test_getTime_validTimestamp', () {
      int timestamp = 1634567890;
      String? result = DatetimeExtension.getTime(timestamp);
      expect(result, '9:38 PM');
    });

    test('test_getTime_nullTimestamp', () {
      int? timestamp;
      String? result = DatetimeExtension.getTime(timestamp);
      expect(result, isNull);
    });
  });

  group('getDate', () {
    test('test_getTime_validTimestamp', () {
      int timestamp = 1634567890;
      String? result = DatetimeExtension.getDate(timestamp);
      expect(result, equals("Thứ hai"));
    });

    test('test_getTime_nullTimestamp', () {
      int? timestamp;
      String? result = DatetimeExtension.getDate(timestamp);
      expect(result, isNull);
    });
  });
}
