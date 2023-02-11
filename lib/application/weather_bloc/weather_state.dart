part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default('') String country,
    @Default(null) WeatherModel? weatherModel,
  }) = _WeatherState;
}
