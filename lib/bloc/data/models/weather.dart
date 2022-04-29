import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required double temp,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) {
    return _Weather(
      temp: json['main']['temp'],
    );
  }
}
