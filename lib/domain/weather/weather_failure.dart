import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

@freezed
abstract class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory WeatherFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory WeatherFailure.unknown({
    required String message,
  }) = Unknown;
}
