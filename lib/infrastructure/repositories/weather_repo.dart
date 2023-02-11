import 'package:easy_localization/easy_localization.dart';
import 'package:weather_app/domain/weather/weather_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/infrastructure/apis/weather_apis.dart';
import 'package:weather_app/infrastructure/models/weather_model/weather_model.dart';

import '../../domain/core/exceptions.dart';
import '../../domain/weather/weather_facade.dart';

class WeatherRepo implements WeatherFacade {
  final WeatherService _weatherService;

  WeatherRepo(this._weatherService);

  @override
  Future<Either<WeatherFailure, dynamic>> getWather(String country) async {
    try {
      final res = await _weatherService.getWeather(country);
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
