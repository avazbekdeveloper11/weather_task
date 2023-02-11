part of 'weather_bloc.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  factory WeatherEvent.getData({required String country}) = _GetData;
}
