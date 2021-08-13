class DatetimeHelper {
  static late DateTime _now;

  DatetimeHelper() {
    _now = DateTime.now();
  }

  static String getDateNow() {
    return '${_now.day}-${_now.month}-${_now.year}';
  }
}
