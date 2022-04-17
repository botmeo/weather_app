import 'package:intl/intl.dart';

String covertToVietNamese(String weekday){
  if(weekday == "Monday"){
    return "Thứ hai";
  } else if(weekday == "Tuesday"){
    return "Thứ ba";
  } else if(weekday == "Wednesday"){
    return "Thứ tư";
  } else if(weekday == "Thursday"){
    return "Thứ năm";
  } else if(weekday == "Friday"){
    return "Thứ sáu";
  } else if(weekday == "Saturday"){
    return "Thứ bảy";
  } else {
    return "Chủ nhật";
  }
}

String getTime(int timestamp) {
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  var formatter = new DateFormat('h:mm a');
  return formatter.format(date);
}

String getDate(int timestamp) {
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  var formatter = new DateFormat('EEEE');
  return covertToVietNamese(formatter.format(date));
}